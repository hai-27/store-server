/*
 * @Description: 用户模块控制器
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-03-27 16:03:09
 */
const userDao = require('../models/dao/userDao');

module.exports = {
  login: async ctx => {
    const { usercode, password } = ctx.request.query;

    if (!usercode || !password) {
      ctx.body = {
        code: '001',
        msg: '用户名或密码不能为空'
      }
      return;
    }

    const user = await userDao.login(usercode, password);

    if (!user.length) {
      ctx.body = {
        code: '002',
        msg: '用户名或密码错误'
      }
      return;
    }

    if (user.length === 1) {
      const loginUser = {
        usercode: user[0].usercode,
        password: user[0].password
      };
      // 保存用户信息到session
      ctx.session.user = loginUser;

      ctx.body = {
        code: '001',
        user: loginUser,
        msg: '登录成功'
      }
      return;
    }

    ctx.body = {
      code: '004',
      msg: '未知错误'
    }
    return;
  },
  getUserList: async ctx => {
    const list = await userDao.getUserList();
    ctx.body = {
      code: '200',
      msg: 'ok',
      list
    }
  },
};