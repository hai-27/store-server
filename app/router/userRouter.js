/*
 * @Description: 用户模块路由
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-03-01 15:21:46
 */
const Router = require('koa-router');
const userController = require('../controllers/userController')

let userRouter = new Router();

userRouter
  .post('/users/login', userController.Login)
  .post('/users/findUserName', userController.FindUserName)
  .post('/users/register', userController.Register)

module.exports = userRouter;