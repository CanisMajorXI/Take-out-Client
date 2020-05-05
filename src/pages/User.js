import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import { connect } from 'react-redux'
import BottomTabBar from '../components/BottomTabBar'
import { getStorage } from '../util/storage'

@connect(state => ({ ...state.user }))
class User extends Component {
  handleClickRegister() {
    this.props.history.push('/user/register')
  }

  handleClickLogin() {
    this.props.history.push({
      pathname: '/user/login',
      search: '?redirect=/user'
    })
  }

  historyToInfo() {
    this.props.history.push('/user/info')
  }

  render() {
    let {
      userInfo: { username, phone, id }
    } = this.props
    let avatars = getStorage('avatar') || {}
    let avatar =
      avatars[id] ||
      'https://cube.elemecdn.com/0/d0/dd7c960f08cdc756b1d3ad54978fdjpeg.jpeg?x-oss-process=image/format,webp/resize,w_90,h_90,m_fixed'
    return (
      <div className="user_container">
        {username ? (
          <header
            className="user_detail"
            onClick={this.historyToInfo.bind(this)}
          >
            <div className="profile">
              {/*<div className="avatar">*/}
              {/*  <img src={avatar} alt="" />*/}
              {/*</div>*/}
              <div className="profile_text">
                <span>{username}</span>
                <span>{phone}</span>
              </div>
            </div>
            <span className="split">></span>
          </header>
        ) : (
          <header className="user_login">
            <button
              className="register btn"
              onClick={this.handleClickRegister.bind(this)}
            >
              Sign up
            </button>
            <button
              className="login btn"
              onClick={this.handleClickLogin.bind(this)}
            >
              Sign in
            </button>
          </header>
        )}
        <section className="address_b">
          <div className="icon">
            <i className="iconfont icon-dizhi"></i>
          </div>
          <Link className="address" to="/user/address">
            <span>My Address</span>
            <span>></span>
          </Link>
        </section>
        <BottomTabBar />
      </div>
    )
  }
}

export default User
