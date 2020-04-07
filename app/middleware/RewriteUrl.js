/*
 * @Description: 重写静态资源URL
 * @Author: hai-27
 * @Date: 2020-04-07 23:24:37
 * @LastEditors: hai-27
 * @LastEditTime: 2020-04-07 23:26:37
 */
module.exports = async (ctx, next) => {
  if (ctx.url.startsWith('/public')) {
    ctx.url = ctx.url.replace('/public', '');
  }
  await next();
}