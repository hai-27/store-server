/*
 * @Description: 汇总模块子路由
 * @Author: hai-27
 * @Date: 2020-04-07 22:51:48
 * @LastEditors: hai-27
 * @LastEditTime: 2020-04-07 22:57:35
 */
const Router = require('koa-router');

let Routers = new Router();

const userRouter = require('./router/userRouter');

Routers.use(userRouter.routes());

module.exports = Routers;
