/*
 * @Description: 全局登录拦截器
 * @Author: hai-27
 * @Date: 2020-04-07 22:42:36
 * @LastEditors: hai-27
 * @LastEditTime: 2020-04-07 22:44:52
 */
module.exports = async (ctx, next) => {
  if (ctx.url.startsWith('/user/')) {
    if (!ctx.session.user) {
      ctx.body = {
        code: '401',
        msg: '用户没有登录，请登录后再操作'
      }
      return;
    }
  }
  await next();
}