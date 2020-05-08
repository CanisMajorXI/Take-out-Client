import React from 'react'
import './emptyTip.less'

function emptyTip(props) {
  return <div className="empty_data">{props.content || 'Full~~~'}</div>
}


export default emptyTip
