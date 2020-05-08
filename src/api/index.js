import axios from 'axios'
import { getStorage } from '../util/storage'
import Loading from '../components/loading'
import Toast from '../components/toast'


axios.defaults.baseURL = 'http://localhost:8080/api/public/v1'

// 请求队列
let queueNum = 0

axios.interceptors.request.use(
  config => {
    Loading.show()
    queueNum++

    // 请求头添加token
    config.headers.Authorization = `${getStorage('token')}`
    return config
  },
  error => {
    return Promise.reject(error)
  }
)

axios.interceptors.response.use(
  response => {
    queueNum--
    
    if (queueNum === 0) {
      setTimeout(() => {
        Loading.close()
      }, 0)
    }
    

    if (response.status === 401) {
      Toast.error('登录失效, 请重新登录...')
    }

    if (response.status === 400) {
      Toast.error('参数错误...')
    }

    return response
  },
  error => {
    queueNum--
    
    if (queueNum === 0) {
      setTimeout(() => {
        Loading.close()
      }, 0)
    }
    return Promise.reject(error)
  }
)


export function getStoreList() {
  return axios.get('/stores')
}





export function getShopDetail(id) {
  return axios.get(`/store/detail/${id}`)
}


export function userRegister(opts) {
  return axios.post('/user/register', {
    data: {
      ...opts
    }
  })
}


export function requestUserLogin(opts) {
  return axios.post('/user/login', {
    data: {
      ...opts
    }
  })
}

export function validateToken() {
  return axios.get('/validate/token')
}

export function generateOrder(data) {
  return axios.post('/order', {
    data
  })
}


export function requestGetOrders() {
  return axios.get('/order')
}


export function reqOrderDetail(orderNum) {
  return axios.get(`/order/detail/${orderNum}`)
}


export function reqAddAddress(data) {
  return axios.post('/address/add', {
    data
  })
}


export function reqGetAddress() {
  return axios.get('/address')
}


export function reqGetTargetAddress(id) {
  return axios.get(`/address/one/${id}`)
}


export function reqDeleteAddress(id) {
  return axios.delete(`/address/delete/${id}`)
}


export function reqUpdateAddress(id, data) {
  return axios.put(`/address/update/${id}`, data)
}






export function changePassword(data) {
  return axios.post('/user/password', data)
}


export function searchGood(q) {
  return axios.get('/client/search', {
    params: {
      q
    }
  })
}
