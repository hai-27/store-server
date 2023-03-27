/*
 * @Copyright: 
 * @file name: File name
 * @Data: Do not edit
 * @LastEditor: 
 * @LastData: 
 * @Describe: 
 */
const receiveDao = require('../models/dao/receiveDao');
const checkLogin = require('../middleware/checkLogin');

module.exports = {

  /**
   * 获取所有收货信息
   * @param {Object} ctx
   */
  GetReceiveInfo: async ctx => {
    let { user_id } = ctx.request.body;
    // 校验用户是否登录
    if (!checkLogin(ctx, user_id)) {
      return;
    }
    // 获取所有收藏信息
    const receiveList = await receiveDao.GetReceiveInfo();

    ctx.body = {
      code: '001',
      collectList: receiveList
    }
  },
  /**
   * 删除用户的收货信息
   * @param {Object} ctx
   */
  DeleteCollect: async ctx => {
    let { user_id, product_id } = ctx.request.body;
    // 校验用户是否登录
    if (!checkLogin(ctx, user_id)) {
      return;
    }

    // 判断该用户的收藏列表是否存在该商品
    let tempCollect = await collectDao.FindCollect(user_id, product_id);

    if (tempCollect.length > 0) {
      // 如果存在则删除
      try {
        const result = await collectDao.DeleteCollect(user_id, product_id);
        // 判断是否删除成功
        if (result.affectedRows === 1) {
          ctx.body = {
            code: '001',
            msg: '删除收藏成功'
          }
          return;
        }
      } catch (error) {
        throw(error)
      }
    } else {
      // 不存在则返回信息
      ctx.body = {
        code: '002',
        msg: '该商品不在收藏列表'
      }
    }
  }
}