/*
 * @Description: 判断是否登录(session中的用户id与请求体传过来的用户id是否一致)
 * @Author: hai-27
 * @Date: 2020-02-25 15:35:58
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-27 01:59:46
 */

/**
 * 校验用户是否登录
 * @param {Object} ctx
 * @param {int} user_id
 * @returns
 */
module.exports = function (ctx, user_id) {
  // 判断请求传递的用户id 与 session中的用户id是否一致
  if (user_id != ctx.session.user.user_id) {
    ctx.body = {
      code: '401',
      msg: '用户名没有登录，请登录后再操作'
    }
    return false;
  }
  return true;
}