import React from 'react'
import Stars from '.././../components/Stars'
import { Link } from 'react-router-dom'
import './storeList.less'

function StoreList(props) {
  const { storeList } = props

  return (
    <ul className="merchant_list">
      {storeList.map(store => (
        <li className="merchant_item" key={store._id}>
          <Link to={`/shop/${store._id}`} className="merchant_detail">
            <div className="text_detail">
              <div className="name">
                <h2>{store.store_name}</h2>
                <span>...</span>
              </div>
              <div className="rate_num">

                <p>Merchant Delivery</p>
              </div>
              <div className="dispatch">
                <div>
                  <span>up to ￥{store.startup_cost}</span>
                  <span className="split">|</span>
                  <span>
                    {store.distribution_cost
                      ? `delivery: ￥${store.distribution_cost}`
                      : 'free delivery'}
                  </span>
                </div>
                <div>
                  <span>{Math.round(Math.random()*200 + 200)}m</span>
                  <span className="split">|</span>{Math.round(Math.random()*10 + 10)}min<span></span>
                </div>
              </div>
              {!store.resultList ? (
                ''
              ) : (
                <div className="shop_item_group">
                  {store.resultList.map((item, i) => {
                    return (
                      <div className="shop_item" key={i}>
                        <p className="name">{item.food_name}</p>
                        <p className="price">￥{item.food_price}</p>
                      </div>
                    )
                  })}
                </div>
              )}
            </div>
          </Link>
        </li>
      ))}
    </ul>
  )
}

export default StoreList
