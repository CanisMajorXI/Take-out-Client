import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import BottomTabBar from '../components/BottomTabBar'
import { connect } from 'react-redux'
import moment from 'moment'

import EmptyTip from '../components/empty-tip'

@connect(state => ({ userInfo: state.user.userInfo }))
class AdminOrder extends Component {
  constructor(props) {
    super(props)
    this.state = {
      orderList: []
    }
  }

   componentDidMount() {
    const orders = []
     // console.log(obj)
    // let {
    //   userInfo: { id }
    // } = this.props
    // // 获取列表
    // let result = await requestGetOrders(id)
    // if (result.status === 200 && result.data.errorCode === 0) {
      this.setState({
        orderList: orders,
      })
    // } else {
    //   Toast.error(result.data.message)
    // }
  }

  render() {
    let { orderList } = this.state

    return (
      <div className="order_container">
        <div className="title">View User Orders</div>
        {!orderList.length ? (
          <EmptyTip />
        ) : (
          <div className="order_list">
            {orderList.map((order, index) => {
              return (
                <div className="order_item" key={index}>
                  <div className="order_detail">
                    <div className="trade_name">
                      <div className="trade">
                        <Link className="name">
                          delivery order
                        </Link>
                        <div className="arrive">Paid</div>
                      </div>
                      <div className="order_time">
                        {moment().subtract(index === 0 ? 0 : 200,'minutes').calendar()}
                      </div>
                    </div>
                    <Link
                      className="foods_detail"
                      to={`/order_detail/${order.storeId}/${order.num}`}
                    >
                      <div className="name">
                        <div className="n">{index ===0 ? order.foods[0].name: '6 people set meal'}</div>
                        <div className="num">{index ===0 ? 2: 19}</div>
                      </div>
                      <div className="price">￥{order.price}</div>
                    </Link>
                    <div className="admin_order_operate">
                      <button onClick={() => {
                          alert('receive success')
                          this.setState({orderList: [orderList[0]]})
                      }}
                      >
                        Receive
                      </button>
                        <button onClick={() => {
                            alert('decline success')
                            this.setState({orderList: [orderList[0]]})
                        }}
                        >
                            Decline
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

export default AdminOrder
