import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import BottomTabBar from '../components/BottomTabBar'
import { connect } from 'react-redux'
import formateDate from '../util/formatDate'
import { requestGetOrders } from '../api'
import Toast from '../components/toast'
import EmptyTip from '../components/empty-tip'
import userInfo from "./userInfo/userInfo";
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
    const obj = JSON.parse("{\n" +
        "        \"foods\": [{\n" +
        "            \"name\": \"spicy chicken wings\",\n" +
        "            \"id\": \"10038\",\n" +
        "            \"price\": \"139.8\",\n" +
        "            \"pic\": \"https://cube.elemecdn.com/8/31/d99d0067db4516921024bf14e6424jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp\",\n" +
        "            \"num\": 1\n" +
        "        }],\n" +
        "        \"_id\": \"5eac402bc54ae9001c14eb4e\",\n" +
        "        \"num\": \"202051152843_x23xp8vnz\",\n" +
        "        \"time\": \"2020-05-01T15:28:43.118Z\",\n" +
        "        \"storeId\": \"5dd292a8b077520c2839aa0b\",\n" +
        "        \"userId\": \"5dde4810fd44caeee8245224\",\n" +
        "        \"storeName\": \"Wallace's burger\",\n" +
        "        \"storeLogoUrl\": \"http://118.31.2.223:8080/uploads/avatars/5dd292a8b077520c2839aa0b-file-17187737d17.png\",\n" +
        "        \"price\": 31.80,\n" +
        "        \"userAddress\": \"dfgd\",\n" +
        "        \"userName\": \"dfgd\",\n" +
        "        \"userPhone\": \"fgdf\"\n" +
        "    }")

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
                        {moment().subtract(index === 0 ? 5 : 200,'minutes').calendar()}
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
