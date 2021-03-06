import React, { Component } from 'react'
import HotSearch from './searchComponents/HotSearch'
import StoreList from '../components/storeList'
import { searchGood } from '../api'
import Toast from '../components/toast'
import { setStorage, getStorage } from '../util/storage'

export default class Search extends Component {
  state = {
    storeList: [],
    value: ''
  }

  handleClickGoBack() {
    window.history.go(-1)
  }

  handleClickSearch = async value => {
    if (value === '') return

    let result = await searchGood(value)
    if (result.status === 200 && result.data.errorCode === 0) {
      let data = result.data.data

      if (!data.length) {
        return Toast.warning('Content not found...')
      }

      this.setState({
        storeList: data
      })
      // 添加历史搜索记录
      let historySearchList = getStorage('historySearchList') || []
      let index = historySearchList.findIndex(item => item === value)
      if (index > -1) {
        historySearchList.splice(index, 1)
      }
      historySearchList.unshift(value)
      if (historySearchList.length > 6) {
        historySearchList.length--
      }
      setStorage('historySearchList', historySearchList)
    } else {
      Toast.error('The server is busy...')
    }
  }

  render() {
    let { storeList, value } = this.state
    return (
      <div className="search_container">
        <section className="header-search">
          <div className="goback" onClick={this.handleClickGoBack}>
            <i className="iconfont icon-you-copy"></i>
          </div>
          <div className="search_input">
            <i className="iconfont icon-sousuo"></i>
            <input
                style={{width: '70%'}}
              type="search"
              name="q"
              placeholder="Input the name of shop or food"
              onInput={e => this.setState({ value: e.currentTarget.value })}
            />
            <button
              className="btn"
              onClick={() => this.handleClickSearch(value)}
            >Search
            </button>
          </div>
        </section>
        {storeList.length ? (
          <StoreList storeList={storeList} />
        ) : (
          <HotSearch clickSearch={this.handleClickSearch} />
        )}
      </div>
    )
  }
}
