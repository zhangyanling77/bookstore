
const { mysql } = require('../qcloud')

module.exports = async (ctx) => {
    const { offset, limit }  = ctx.request.query;
    // console.log("offset and limit >>>>>>>", offset, limit)
    const books = await mysql('books')
                        .select('books.*', 'cSessionInfo.user_info')
                        .join('cSessionInfo', 'books.openid', '=', 'cSessionInfo.open_id')
                        .limit(Number(limit))
                        .offset(Number(offset))
                        .orderBy('books.id', 'desc')

    ctx.state.data = {
        code: 0,
        data: {
            list: books.map(v => {
                const info = JSON.parse(v.user_info)
                return Object.assign({}, v, {
                    nickName: info.nickName
                })
            })
        }
    }
}