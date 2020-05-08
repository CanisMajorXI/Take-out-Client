import React, { useRef, useEffect, useState } from "react";
import Toast from '../components/toast';
import { connect } from 'react-redux';
import formatSearch from '../util/formatSearch';
import { reqAddAddress, reqUpdateAddress, reqGetTargetAddress } from '../api';
import { setStorage, getStorage } from '../util/storage';

function AddressAdd(props) {
  let { history, userInfo, location, match } = props;

  let linkRef = useRef(null);
  let phoneRef = useRef(null);
  let addressRef = useRef(null);
  let detailRef = useRef(null);
  let [targetAddress, setTargetAddress] = useState({});

  function handleGoBack() {
    let redirect = formatSearch(location.search);

    redirect ? history.replace(redirect) : history.goBack();
  }

  async function handleConfirm() {
    let linkVal = linkRef.current.value;
    let phoneVal = phoneRef.current.value;
    let addVal = addressRef.current.value;
    let deVal = detailRef.current.value;

    if (!linkVal || !phoneVal || !addVal || !deVal) {
      return Toast.warning('This cannot be empty...');
    }

    let id = userInfo.id;
    const address = {
      name: linkVal,
      phone: phoneVal,
      address: addVal,
      detail: deVal
    }

    let result;

    if (match.params.id) {
      result = await reqUpdateAddress(match.params.id, address);
    } else {
      result = await reqAddAddress({ id, address });
    }

    if (result.status === 200 && result.data.errorCode === 0) {
      // 更新本地address数据
      let addressLocal = getStorage('address') || {};
      addressLocal[id] = address;
      Toast.success(result.data.message);
      setStorage('address', addressLocal);
      return handleGoBack();
    } else {
      return Toast.error('Server is busy now, try again later...')
    }
  }

  useEffect(() => {
    if(match.params.id) {
      reqGetTargetAddress(match.params.id).then(result => {
        setTargetAddress(result.data.data)
      }).catch(err => {
        Toast.error(err.message);
      })
    }

  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  return (
    <div className="add_address">
      <header className="confim_head">
        <span onClick={handleGoBack}>
          <i className="iconfont icon-you-copy"></i>
        </span>
        <h1>{match.params.id ? 'Modify ' : 'Add '}Address</h1>
      </header>
      <main className="content">
        <div className='form'>
          <div className="linkman">
            <span>Name</span>
            <input ref={linkRef} type="text" placeholder="input your name" defaultValue={targetAddress.name} />
          </div>
          <div className="linkman">
            <span>Phone</span>
            <input ref={phoneRef} type="text" placeholder="input your phone number" defaultValue={targetAddress.phone} />
          </div>
          <div className="linkman">
            <span>Address</span>
            <input ref={addressRef} type="text" placeholder="input your address" defaultValue={targetAddress.address} />
          </div>
          <div className="linkman">
            <span>Detail</span>
            <input ref={detailRef} type="text" placeholder="input your detailed address e.g. dorm no." defaultValue={targetAddress.detail} />
          </div>
        </div>
        <div className='form_btn'>
          <button className='btn' onClick={handleConfirm}>OK</button>
        </div>
      </main>
    </div>
  );
}



export default connect(({user}) => ({ userInfo: user.userInfo }))(AddressAdd);
