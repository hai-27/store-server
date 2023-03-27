/*
 * @Copyright: 
 * @file name: File name
 * @Data: Do not edit
 * @LastEditor: 
 * @LastData: 
 * @Describe: 
 */
const Router = require('koa-router');
const receiveController = require('../../controllers/receiveController')

let orderRouter = new Router();

orderRouter
  .post('/user/receive/getList', receiveController.GetReceiveInfo)
  // .post('/user/order/addOrder', receiveController.AddOrder)

module.exports = orderRouter;