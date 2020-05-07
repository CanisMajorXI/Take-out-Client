/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { Component } from "react";
import ShopTabBar from "./shopComponents/ShopTabBar";
import ShopFoodList from './shopComponents/ShopFoodList';
import ShopInfo from "./shopComponents/ShopInfo";
import BottomCart from './shopComponents/BottomCart';
import { connect } from 'react-redux';
import { getShopDetail } from '../api';
import { getStorage, setStorage } from '../util/storage';
import Toast from "../components/toast";

@connect(store => ({ ...store.shop }))
class Shop extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentIndex: 0,
      cartList: [],
      shopData: {}
    };
  }

  setCurrentIndex(index) {
    this.setState({
      currentIndex: index
    });
  }

  clickGoback() {
    this.props.history.replace('/');
  }

  updataCartList(cartList) {
    const { id } = this.props.match.params;
    this.setState({
      cartList
    });
    let cart = getStorage('cartList') ||　{};
    cart[id] = cartList;
    setStorage('cartList', cart);
  }

  async componentDidMount() {
    let { id } = this.props.match.params;
    let result = await getShopDetail(id);
    let cart = getStorage('cartList') || {};
    let cartList = cart[id] || [];
    if (result.status === 200 && result.data.errorCode === 0) {
      this.setState({
        shopData: result.data.data,
        cartList
      })
    } else {
      Toast.error(result.data.message);
    }
  }

  render() {
    let { currentIndex, shopData, cartList } = this.state;
    let { history, location } = this.props;
    let { id } = this.props.match.params;
    
    return (
      <div className="goods_container">
        <div className="store_detail">
          <div className="content">
            <div className="store_name">
              <h2>{shopData['store_name']}</h2>
            </div>
          </div>
        </div>
        <div className="shop_tab">
          <ShopTabBar
            currentIndex={currentIndex}
            setCurrentIndex={this.setCurrentIndex.bind(this)}
          />
        </div>
        <div className='main_content'>
          {
            currentIndex === 0 ? <ShopFoodList shopData={shopData} storeId={id} cartList={cartList} updataCartList={this.updataCartList.bind(this)} /> : (currentIndex === 1 ? <ShopInfo /> : <ShopInfo />)
          }
        </div>
        <BottomCart history={history} location={location} cartList={cartList} shopData={shopData}/>
      </div>
    );
  }
}

export default Shop;