import React, {useRef} from 'react';
import Toast from '../components/toast';
import { userRegister } from '../api';
import { Link } from 'react-router-dom';

function UserRegister(props) {

  let usernameRef = useRef(null);
  let passwordRef = useRef(null);
  let phoneRef = useRef(null);

  function handleGoBack() {
    props.history.go(-1);
  }

  async function handleClickRegister() {
    let username = usernameRef.current.value,
        phone = phoneRef.current.value,
        password = passwordRef.current.value,
        nameExp = /^\S{2,16}$/,
        phoneExp = /^(?:(?:\+|00)86)?1[3-9]\d{9}$/,
        passExp = /^\S{6,16}$/;

    if (username === '' || phone === '' || password === '') {
      return Toast.error('Empty phone number username or password!');
    } else if (!nameExp.test(username)) {
      return Toast.error('Invalid username');
    } else if (!phoneExp.test(phone)) {
      return Toast.error('')
    } else if (!passExp.test(password)) {
      return Toast.error('password length 6-16');
    }

    let res = await userRegister({
      username,
      phone,
      password
    });

    if (res.status === 200 && res.data.errorCode === 0) {
      props.history.push('/user/login');
    } 
    return Toast.success(res.data.message+', Please Log in', 5000);
  }

  return (
    <div className='register_wrapper'>
      <header className="confim_head">
        <span onClick={handleGoBack}>
          <i className="iconfont icon-you-copy"></i>
        </span>
        <h1>Sign up</h1>
      </header>
      <section className='form_group'>
        <div className='form'>
          <label htmlFor="phone">
           Phone:
            <input type="text" name='phone' id='phone' ref={phoneRef}/>
          </label>
          <label htmlFor="username">
           Username:
            <input id='username' name='username' type="text" ref={usernameRef}/>
          </label>
          <label htmlFor="password">
           Password:
            <input type="password" name="password" id="password" ref={passwordRef}/>
          </label>
          <button className='btn' onClick={handleClickRegister}>Register</button>
          <Link to="/user/login" className="login-tip">
            Have Account？<span>Go to sign in</span>
          </Link>
        </div>
      </section>
    </div>
  )
}

export default UserRegister;