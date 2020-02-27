/*
 * @Description: 用户模块路由
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-25 22:37:06
 */
const Router = require('koa-router');
const userController = require('../controllers/userController')

let userRouter = new Router();

userRouter
  .post('/user/login', userController.Login)
  .post('/user/findUserName', userController.FindUserName)
  .post('/user/register', userController.Register)

module.exports = userRouter;