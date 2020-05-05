import React from 'react'
import Stars from '../../components/Stars'
import { connect } from 'react-redux'

function ShopComment(props) {
  return (
    <div className="shop_comment_container">
    </div>
  )
}

export default connect(store => ({ ...store.shop }))(ShopComment)
