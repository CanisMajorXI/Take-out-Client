import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import BottomTabBar from '../components/BottomTabBar'
import { connect } from 'react-redux'
import EmptyTip from '../components/empty-tip'
import moment from "moment";

@connect(state => ({ userInfo: state.user.userInfo }))
class Order extends Component {
  constructor(props) {
    super(props)
    this.state = {
      orderList: []
    }
  }

  handleClickReOrder(id) {
    this.props.history.push(`/shop/${id}`)
  }

  handleClickAssess(id) {
    this.props.history.push(`/order/assess/${id}`)
  }

   componentDidMount() {
    const obj = []

      this.setState({
        orderList: [obj],
      })
  }

  render() {
    let { orderList } = this.state

    return (
      <div className="order_container">
        <div className="title">Order</div>
        {!orderList.length ? (
          <EmptyTip />
        ) : (
          <div className="order_list">
            {orderList.map((order, index) => {
              console.log(order)
              return (
                <div className="order_item" key={index}>
                  <div className="order_detail">
                    <div className="trade_name">
                      <div className="trade">
                        <Link className="name" to={`/shop/${order.storeId}`}>
                          {order.storeName}
                        </Link>
                        <div className="spilt">></div>
                        <div className="arrive">Paid</div>
                      </div>
                      <div className="order_time">
                        {moment().calendar()}
                      </div>
                    </div>
                    <Link
                      className="foods_detail"
                      to={`/order_detail/${order.storeId}/${order.num}`}
                    >
                      <div className="name">
                        <div className="n">{order.foods[0].name}</div>
                      </div>
                      <div className="price">￥{order.price}</div>
                    </Link>
                    <div className="order_operate">
                      <button>
                        Comment
                      </button>
                      <button>
                        Buy Again
                      </button>
                    </div>
                  </div>
                </div>
              )
            })}
          </div>
        )}
        <BottomTabBar />
      </div>
    )
  }
}

export default Order
