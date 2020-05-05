import React from 'react';
import { NavLink } from 'react-router-dom';

const BottomTabBar = (props) => {
  return (
    <nav className='tab_bar_container'>
      <NavLink exact to="/" className='tab_item' isActive = {(match, location) => (location.pathname === '/')} activeClassName="selected">
        {/*<i className='iconfont icon-fan'></i>*/}
          <span style={{lineHeight: 4}}><b>Home Page</b></span>
      </NavLink>
      <NavLink to="/order" className='tab_item' isActive = {(match, location) => (location.pathname === '/order')} activeClassName="selected">
        {/*<i className='iconfont icon-icon-'></i>*/}
        <span style={{lineHeight: 4}}><b>Order</b></span>
      </NavLink>
      <NavLink to="/user" className='tab_item' isActive = {(match, location) => (location.pathname === '/user')} activeClassName="selected">
        {/*<i className='iconfont icon-wode'></i>*/}
          <span style={{lineHeight: 4}}><b>Personal Center</b></span>
      </NavLink>
    </nav>
  )
}

export default BottomTabBar;