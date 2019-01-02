// 添加图书信息
const https = require('https')
const { mysql } = require('../qcloud')
// 新增图书
// 1. 获取豆瓣信息
// https://developers.douban.com/wiki/?title=book_v2#get_isbn_book
// https://api.douban.com/v2/book/isbn/9787121298998
// 2. 入库
module.exports = async (ctx)=>{
  const { isbn, openid } = ctx.request.body
  console.log('=======添加书籍=======',isbn,openid)
  if(isbn && openid){
    // 避免重复添加书籍
    const findRes = await mysql('books').select().where('isbn', isbn)
    if(findRes.length){
      ctx.state = {
        code: -1,
        data: {
          msg:'图书已存在'
        }
      }
      return 
    }
    // 请求豆瓣数据，插入数据库表
    let url = 'https://api.douban.com/v2/book/isbn/'+ isbn
    const bookinfo = await getJSON(url)
    // console.log(bookinfo)
    const rate = bookinfo.rating.average
    const { title, image, alt, publisher, summary ,price} = bookinfo
    // 例如：tag: 科幻 1000, 小说500
    const tags = bookinfo.tags.map(v=>{
      return `${v.title} ${v.count}`
    }).join(',')
    const author = bookinfo.author.join(',')
    try{
      await mysql('books').insert({
        isbn, openid, rate, title, image, alt, publisher, summary, price, tags, author
      })
      ctx.state.data = {
        title,
        msg:'success'
      }
    }catch(e){
      ctx.state = {
        code: -1,
        data: {
          msg:'新增失败:' + e.sqlMessage
        }
      }
    }
  }
}

function getJSON(url){
  return new Promise((reslove,reject)=>{
    https.get(url,res => {
      let urlData = ''
      res.on('data', data => {
        urlData += data
      })
      res.on('end', data => {
        const bookinfo = JSON.parse(urlData)
        if(bookinfo.title){
          reslove(bookinfo)
        }
        reject(bookinfo)
      })
    })
  })
}