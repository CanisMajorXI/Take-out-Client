import React, { useState, useEffect } from 'react'
import { getStorage } from '../../util/storage'

export default function HotSearch(props) {
  const [historySearchList, setHistorySearchList] = useState([])
  const [hotItem] = useState(['Tea', 'Coffee', 'Chicken'])

  useEffect(() => {
    let searchList = getStorage('historySearchList') || []
    setHistorySearchList(searchList)
  }, [])

  function handleClickClear() {
    window.localStorage.removeItem('historySearchList')
    setHistorySearchList([])
  }

  function handleClickHot(e) {
    let value = e.currentTarget.innerText.trim()
    props.clickSearch(value)
  }

  return (
    <>
      {!historySearchList.length ? (
        ''
      ) : (
        <section className="history_search_wrapper">
          <header className="search_title">
            <span>History</span>
            <div
              aria-label="清楚历史搜索"
              role="button"
              onClick={handleClickClear}
            >
              <i className="iconfont icon-lajitong"></i>
            </div>
          </header>
          <section className="search_content">
            {historySearchList.map((item, index) => {
              return (
                <button
                  className="search_item"
                  onClick={handleClickHot}
                  key={index}
                >
                  {item}
                </button>
              )
            })}
          </section>
        </section>
      )}
      <section className="hot_search_wrapper">
        <header className="search_title">Popular</header>
        <section className="search_content">
          {hotItem.map((item, index) => {
            return (
              <button
                className="search_item"
                key={index + item}
                onClick={handleClickHot}
              >
                {item}
              </button>
            )
          })}
        </section>
      </section>
    </>
  )
}
