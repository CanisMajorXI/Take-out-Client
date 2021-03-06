import React, { useRef, useEffect, useState } from "react";
import Toast from "../components/toast";
import actions from "../store/actions/userActions";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import formatSearch from "../util/formatSearch";
import { setStorage, getStorage } from "../util/storage";
import { requestUserLogin } from "../api";
import  drawPic from '../util/drawPic';

function UserLogin(props) {
  let { history, location, userLogin } = props;

  let usernameRef = useRef(null);
  let passwordRef = useRef(null);
  let canvasRef = useRef(null);
  let codeRef = useRef(null);
  let [code, setCode] = useState('');
  const [isAdmin,setAdmin] = useState(false)
  function handleGoBack() {
    let redirect = formatSearch(location.search);

    redirect ? history.replace(redirect) : history.goBack();
  }

  async function handleClickLogin() {
    let username = usernameRef.current.value,
      password = passwordRef.current.value,
      valideteCode = codeRef.current.value;

    if (username === "" || password === "") {
      return Toast.error("Empty username or password!");
    }

    if (valideteCode === '') {
      return Toast.error("empty verify code");
    }

    if (valideteCode.toUpperCase() !== code) {
      return Toast.error("verify code error");
    }

    const result = await requestUserLogin({
      username,
      password
    });

    // 登录成功
    if (result.status === 200 && result.data.errorCode === 0) {

      let { userInfo, avatar, message, token } = result.data;
      Toast.success(message);
      let avatars = getStorage("avatar");
      setStorage("token", token);
      setStorage("avatar", { ...avatars, [userInfo.id]: avatar });

      userLogin({
        userInfo,
        isLogin: true
      });
     if (location.state && location.state.from) {
        history.replace(location.state.from);
     } else {
      handleGoBack();
     }
    } else {
      Toast.error(result.data.message);
    }
  }

  function generatorValidateCode() {
    let generatorCode = drawPic(canvasRef.current);
    setCode(generatorCode);
  }

  useEffect(() => {
    generatorValidateCode();
  }, []);

  return (
    <div className="login_wrapper">
      <header className="confim_head">
        <span onClick={handleGoBack}>
          <i className="iconfont icon-you-copy"></i>
        </span>
        <h1>Sign In</h1>

      </header>

      <section className="form_group">
        <div className="form">
          <input
            ref={usernameRef}
            id="username"
            name="username"
            type="text"
            placeholder="Input your user name or phone number"
            defaultValue='16666666666'
          />
          <input
            ref={passwordRef}
            type="password"
            name="password"
            id="password"
            placeholder="input your password"
            defaultValue='123456'
          />

          <div className="box">
            <div>
              <label><input name="Admin" type="radio" value={false} checked onChange={e=> setAdmin(e.target.value)}/>User </label>
              <label><input name="Admin" type="radio" value={true}  onChange={e=> setAdmin(e.target.value)}/>Admin </label>
            </div>
            {isAdmin ?  <input

                type="password"
                name="admin_password"
                id="admin_password"
                placeholder="admin password"
                // defaultValue='123456'
            /> : null}
            <input ref={codeRef} style={{display: 'none'}} type="text" id="validate" placeholder="verifyCode" defaultValue={code} />
            <canvas
                style={{display: 'none'}}
              ref={canvasRef}
              id="canvas"
              width="100"
              height="32"
              onClick={generatorValidateCode}
            ></canvas>
          </div>
          <button className="btn" onClick={handleClickLogin}>
            Log in
          </button>
          <Link to="/user/register" className="register">
            No Account？<span>Go to sign up</span>
          </Link>
        </div>
      </section>
    </div>
  );
}

const mapDispatchToProps = dispatch => {
  return {
    userLogin: opts => {
      return dispatch(
        actions.userLogin({
          ...opts
        })
      );
    }
  };
};

export default connect(
  store => ({ isLogin: store.user.isLogin }),
  mapDispatchToProps
)(UserLogin);
