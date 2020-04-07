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
const resourcesRouter = require('./router/resourcesRouter');
const productRouter = require('./router/productRouter');
const shoppingCartRouter = require('./router/shoppingCartRouter');
const orderRouter = require('./router/orderRouter');
const collectRouter = require('./router/collectRouter');

Routers.use(userRouter.routes());
Routers.use(resourcesRouter.routes());
Routers.use(productRouter.routes());
Routers.use(shoppingCartRouter.routes());
Routers.use(orderRouter.routes());
Routers.use(collectRouter.routes());

module.exports = Routers;