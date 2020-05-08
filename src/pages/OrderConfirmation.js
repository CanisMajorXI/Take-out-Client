import React, { useState, useEffect } from "react";
import { connect } from "react-redux";
import { getStorage, setStorage } from "../util/storage";
import Toast from '../components/toast';
import Modal from '../components/modal';
import { generateOrder } from '../api';
import formatSearch from '../util/formatSearch';

function OrderConfirmation(props) {
  let [order, setOrder] = useState({});
  let [address, setAddress] = useState({});

  let { userInfo, location, history, cartList } = props;
  let shopData = (location.state && location.state.shopData) || getStorage('shopData');

  let cart = getStorage('cartList');
  cartList = cartList.length ? cartList : (cart[shopData._id] || []);


  useEffect(() => {
    // 本地保存数据
    setStorage('shopData', shopData);
    let addressLocal = getStorage('address') || {};
    if (addressLocal[userInfo.id] && addressLocal[userInfo.id].name) {
      setAddress(addressLocal[userInfo.id]);
    }

    if (cartList.length !== 0) {
      let allPrice = 0;
      cartList.forEach(food => {
        allPrice += parseFloat(food.price) * food.num;
      });
      allPrice += shopData.distribution_cost;

      allPrice = allPrice.toFixed(2);

      let o = {
        storeName: shopData.store_name,
        dispatchCost: shopData.distribution_cost,
        cartList,
        allPrice
      }

      setOrder(o);
      setStorage('order', o);
    } else {
      let orderLocal = getStorage('order');
      setOrder({
        ...orderLocal
      });
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  function handleGoBack() {
    //退出订单页面, 清楚本地存储
    setStorage('order', {});
    let redirect = formatSearch(location.search);

    redirect ? history.replace(redirect) : history.goBack();
  }

  function handleClickPay() {
    if (!address.name) {
      return Toast.info('Please add your address first...');
    }
    Modal.confirm({
      title: 'Please select the mode of payment ',
      contentText: `
      1： AliPay
      2: Wechat
      `,
      async onOk() {
        let sendData = {
          userId: userInfo.id,
          storeId: shopData._id,
          storeName: shopData.store_name,
          storeLogoUrl: shopData.store_logo_url,
          foods: cartList,
          price: order.allPrice,
          address
        }
        let res = await generateOrder(sendData);

        if (res.status === 200 && res.data.errorCode === 0) {
          const cart = getStorage('cartList') || {};
          cart[shopData._id] = [];
          setStorage('cartList', cart);
          window.location.href = res.data.result;
        } else {
          Toast.error('The server is busy...');
        }
      }
    })
  }

  return (
    <div className="order_confim_container">
      <header className="confim_head">
        <span onClick={handleGoBack}>
          <i className="iconfont icon-you-copy"></i>
        </span>
        <h1>Confirm the order</h1>
      </header>
      <section className="address">
      </section>
      <section className="cart_group">
        <h3 className="cart_storename">{order.storeName}</h3>
        <ul className="foods">
          {order.cartList && order.cartList.map((food, i) => {
            return (
              <li className="cart_item" key={i}>
                <span className="name">{food.name}</span>
                <span className="num">x {food.num}</span>
                <span className="price">￥{food.price}</span>
              </li>
            );
          })}
        </ul>
        <div className="dispatch_cost other">
          <span>delivery cost</span>
          <span>￥{order.dispatchCost}</span>
        </div>
        <div className="price other">
          <span>
            Total ￥<span className="all_price">{order.allPrice}</span>
          </span>
        </div>
        <footer className="pay_bar">
          <span>￥{order.allPrice}</span>
          <div className="pay" onClick={handleClickPay}>Pay</div>
        </footer>
      </section>
    </div>
  );
}

export default connect(store => ({ userInfo: store.user.userInfo, cartList: store.shop.cartList }))(OrderConfirmation);
