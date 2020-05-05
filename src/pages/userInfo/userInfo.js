import React from 'react';
import './userInfo.less';
import { connect } from 'react-redux';
import { setStorage, getStorage } from '../../util/storage';
import actions from '../../store/actions';
import Toast from '../../components/toast';
import { Link } from 'react-router-dom';

function UserInfo(props) {
  let { userInfo, validateToken, history } = props;

  function handleQuit() {
    setStorage('token', "");
    validateToken({
      userInfo: {},
      isLogin: false
    })
    history.push('/user');
    Toast.success('Log out success...');
  }

  function historyToAvatar() {
    history.push('/user/avatar');
  }

  let avatars = getStorage('avatar') || {};

  let avatar = avatars[userInfo.id] || "https://cube.elemecdn.com/0/d0/dd7c960f08cdc756b1d3ad54978fdjpeg.jpeg?x-oss-process=image/format,webp/resize,w_90,h_90,m_fixed";

  return (
    <div className='user_info_contaienr'>
      {/*<div className='avatar item' onClick={ historyToAvatar }>*/}
      {/*  <b>头像</b>*/}
      {/*  <div className='avatar_img'>*/}
      {/*    <img src={ avatar } alt=""/>*/}
      {/*    <span className='icon'>></span>*/}
      {/*  </div>*/}
      {/*</div>*/}
      <div className='username item'>
        <b>Username</b>
        <span>{ userInfo.username }</span>
      </div>
      <h2>Account Binding</h2>
      <div className='phone item'>
        <b>Phone</b>
        <span className='content'>
          <span>{ userInfo.phone }</span>
          <span className='icon'>></span>
        </span>
      </div>
      <h2>Security Settings</h2>
      <div className='phone item'>
        <b>Password</b>
        <Link className='content' to='/user/password'>
          <span className='change_text'>change</span>
          <span className='icon'>></span>
        </Link>
      </div>
      <button className='back_btn' onClick={ handleQuit }>Log out</button>
    </div>
  )
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    validateToken: (res) => {
      dispatch(actions.user.userValidate(res));
    }
  }
}

export default connect(state => ({ userInfo: state.user.userInfo, avatar: state.user.avatar }), mapDispatchToProps)(UserInfo);