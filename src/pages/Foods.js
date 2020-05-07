import React, { Component } from 'react'
import { getStoreList } from '../api/index'
import { Link } from 'react-router-dom'
import StoreList from '../components/storeList'
import BottomTabBar from '../components/BottomTabBar'
import { connect } from 'react-redux'
import { KeepAlive } from 'react-activation'
import { getStorage } from '../util/storage'

@connect(state => ({ ...state.user }))
class Food extends Component {
  constructor(props) {
    super(props)
    this.state = {
      storeList: [],
      currentAddr: ''
    }
  }

  async componentDidMount() {
    let result = await getStoreList()

    this.setState({
      storeList: result.data.data
    })
  }

  handleAddress() {
    let { isLogin, history, location } = this.props
    let toPath = isLogin ? '/user/address/select' : '/user/login'
    history.push({
      pathname: toPath,
      search: `?redirect=${location.pathname}`
    })
  }

  render() {
    let {
      userInfo: { id }
    } = this.props
    let { storeList } = this.state
    let address = getStorage('address')

    let currentAddr = ''

    if (address && address[id]) {
      currentAddr = address[id].address
    }

    return (
      <div className="home_container">
        <header className="home_header">
          <div
            className="header_address"
            onClick={this.handleAddress.bind(this)}
          >
            <i className="iconfont icon-zuobiao"></i>
            <span className="address_name">{currentAddr || '+Address'}</span>
            <i className="icon_trig"></i>
          </div>
          <Link to="/search" className="search_input">
            <div className="ipt">
              <i className="iconfont icon-sousuo"></i>
              <span>Search nearby shops</span>
            </div>
          </Link>
        </header>
        <section className="recommended_merchants">
          <span className="split">——</span>
          <span className="title">Recommend</span>
          <span className="split">——</span>
        </section>
        <section className="merchants">
          <StoreList storeList={storeList} />
        </section>
        <BottomTabBar />
      </div>
    )
  }
}

export default Food
