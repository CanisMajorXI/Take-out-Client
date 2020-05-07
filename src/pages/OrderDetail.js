import React, { useState, useEffect } from 'react'

function OrderDetail(props) {
  let [order, setOrder] = useState({})
  let { match } = props

  useEffect(() => {
    let { orderNum } = match.params
  }, [])

  function handleGoBack() {
    props.history.go(-1)
  }

  return (
    <div className="order_detail_container">
      <header className="confim_head">
        <span onClick={handleGoBack}>
          <i className="iconfont icon-you-copy"></i>
        </span>
        <h1>Order Detail</h1>
      </header>
      <section className="order_group">
        <div className="title">Order Info</div>
        <ul>
          <li className="order_item">Order Num：20200508123456</li>
          <li className="order_item">Payment method: online payment</li>
          <li className="order_item">order time : May 8th, 2020</li>
        </ul>
      </section>
    </div>
  )
}

export default OrderDetail
