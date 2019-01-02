 import config from './config';

 /**
   * 时间格式化
   * @param {*时间对象} date 
   */
  export const formatTime = date => {
    const year = date.getFullYear()
    const month = date.getMonth() + 1
    const day = date.getDate()
    const hour = date.getHours()
    const minute = date.getMinutes()
    const second = date.getSeconds()
  
    return [year, month, day].map(formatNumber).join('-') + ' ' + [hour, minute, second].map(formatNumber).join(':')
  }

  /**
   * 10以下数字前面补0
   * @param {*数字} n 
   */
  const formatNumber = n => {
    n = n.toString()
    return n[1] ? n : '0' + n
  }

  /**
   * 判断是否是时间对象
   * @param {*时间对象} d 
   */
  const isDate = d => {
    if ((typeof d == 'object') && (d instanceof Date)) return true;
    return false;
  }

  /**
   * 判断是否是闰年
   * @param {*字符串或时间对象} year
   */
  export const isLeapYear = year => {
    //传入为时间格式需要处理
    if (isDate(year)) year = year.getFullYear()
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) return true;
    return false;
  }

/**
 * http get工具函数 获取数据
 * @param {*} url 
 * @param {*} data 
 */
export const get = (url, data) => {
  return request(url, 'GET', data)
}

/**
 * post请求
 * @param {*} url 
 * @param {*} data 
 */
export const post = (url, data) => {
  return request(url, 'POST', data)
}
 
/**
 * 请求封装
 * @param {*} url 
 * @param {*} method 
 * @param {*} data 
 * @param {*} header 
 */
const request = (url, method, data, header={}) =>{
  return new Promise((resolve, reject) => {
    wx.request({
      url: config.baseUrl + url, 
      data,
      method,
      header,   
      success: res => {
        if (res.data.code === 0) {
          resolve(res.data.data)
        } else {
          showModal('操作失败',res.data.data.msg)
          reject(res.data)
        }
      }
    })
  })
}
 
/**
 * 模态框
 * @param {*} title 
 * @param {*} content 
 */
export const showModal = (title, content) => {
  wx.showModal({
    title,
    content,
    showCancel: false,
    confirmColor: '#c33979'
  })
}
 
/**
 * 成功提示信息
 * @param {*} text 
 */
export const showSuccess = (text) => {
  wx.showToast({
    title: text,
    icon: 'success'
  })
}

/**
 * 不带图标的提示信息
 * @param {*} text 
 */
export const showWarning = (text) => {
  wx.showToast({
    title: text,
    icon: 'none'
  })
}

/**
 * 截取指定长度的字符串
 */
export const spliceStr = (str, num) => {
  if (!str) {
    return;
  }
  let _str = str.length > num ? str.slice(0, num) + "..." : str;
  return _str;
}

/**
 * 数组去重
 */
export const dedupe = (array) => {
  return Array.from(new Set(array));
}

/**
 * 获取随机颜色
 */
export const getRandomColor = () => {
  return Math.floor(Math.random() * (2 << 23)).toString(16);
}
