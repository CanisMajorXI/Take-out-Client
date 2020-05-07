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
    const orders = JSON.parse('[{\n' +
        '        "foods": [{\n' +
        '            "name": "spicy chicken wings",\n' +
        '            "id": "10038",\n' +
        '            "price": "139.8",\n' +
        '            "pic": "https://cube.elemecdn.com/8/31/d99d0067db4516921024bf14e6424jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",\n' +
        '            "num": 1\n' +
        '        }],\n' +
        '        "_id": "5eac402bc54ae9001c14eb4e",\n' +
        '        "num": "202051152843_x23xp8vnz",\n' +
        '        "time": "2020-05-01T15:28:43.118Z",\n' +
        '        "storeId": "5dd292a8b077520c2839aa0b",\n' +
        '        "userId": "5dde4810fd44caeee8245224",\n' +
        '        "storeName": "22",\n' +
        '        "storeLogoUrl": "http://localhost:8080/uploads/avatars/5dd292a8b077520c2839aa0b-file-17187737d17.png",\n' +
        '        "price": 35.1,\n' +
        '        "userAddress": "dfgd",\n' +
        '        "userName": "dfgd",\n' +
        '        "userPhone": "fgdf"\n' +
        '    }, {\n' +
        '        "foods": [{\n' +
        '            "name": "spicy chicken wings",\n' +
        '            "id": "10039",\n' +
        '            "price": "28.8",\n' +
        '            "pic": "https://cube.elemecdn.com/4/32/67a70d419f4a58a3b73dcf9964fd7jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",\n' +
        '            "num": 7\n' +
        '        }, {\n' +
        '            "name": "spicy chicken wings",\n' +
        '            "id": "10038",\n' +
        '            "price": "19.8",\n' +
        '            "pic": "https://cube.elemecdn.com/8/31/d99d0067db4516921024bf14e6424jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",\n' +
        '            "num": 7\n' +
        '        }, {\n' +
        '            "name": "spicy chicken wings",\n' +
        '            "id": "10037",\n' +
        '            "price": "49.8",\n' +
        '            "pic": "https://cube.elemecdn.com/c/bc/262756a99ce1a45465564bc8e7b93jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",\n' +
        '            "num": 1\n' +
        '        }],\n' +
        '        "_id": "5e52331fc54ae9001c14e7e4",\n' +
        '        "num": "2020223893_pm494v2ly",\n' +
        '        "time": "2020-02-23T08:09:03.704Z",\n' +
        '        "storeId": "5dd292a8b077520c2839aa0b",\n' +
        '        "userId": "5dde4810fd44caeee8245224",\n' +
        '        "storeName": "吉客餐厅",\n' +
        '        "storeLogoUrl": "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",\n' +
        '        "price": 392,\n' +
        '        "userAddress": "城东公寓",\n' +
        '        "userName": "小明",\n' +
        '        "userPhone": "16879246547"\n' +
        '    }]')
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
                        {moment().subtract(index === 0 ? 5 : 200,'minutes').calendar()}
                      </div>
                    </div>
                    <Link
                      className="foods_detail"
                      to={`/order_detail/${order.storeId}/${order.num}`}
                    >
                      <div className="name">
                        <div className="n">{order.foods[0].name}</div>
                        <div className="num">{order.foods.length}</div>
                      </div>
                      <div className="price">￥{order.price}</div>
                    </Link>
                    <div className="admin_order_operate">
                      <button
                      >
                        Receive
                      </button>
                      <button
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
