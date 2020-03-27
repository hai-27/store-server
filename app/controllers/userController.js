/*
 * @Description: 用户模块控制器
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-03-27 16:03:09
 */
const rp = require('request-promise');
const userDao = require('../models/dao/userDao');
const { checkUserInfo, checkUserName } = require('../middleware/checkUserInfo');

module.exports = {

  /**
   * 用户登录
   * @param {Object} ctx
   */
  Login: async ctx => {

    let { userName, password } = ctx.request.body;

    // 校验用户信息是否符合规则
    if (!checkUserInfo(ctx, userName, password)) {
      return;
    }

    // 连接数据库根据用户名和密码查询用户信息
    let user = await userDao.Login(userName, password);
    // 结果集长度为0则代表没有该用户
    if (user.length === 0) {
      ctx.body = {
        code: '004',
        msg: '用户名或密码错误'
      }
      return;
    }

    // 数据库设置用户名唯一
    // 结果集长度为1则代表存在该用户
    if (user.length === 1) {

      const loginUser = {
        user_id: user[0].user_id,
        userName: user[0].userName
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

    //数据库设置用户名唯一
    //若存在user.length != 1 || user.length!=0
    //返回未知错误
    //正常不会出现
    ctx.body = {
      code: '500',
      msg: '未知错误'
    }
  },
  /**
   * 微信小程序用户登录
   * @param {Object} ctx
   */
  miniProgramLogin: async ctx => {
    const appid = 'wxeb6a44c58ffde6c6';
    const secret = '9c40f33cf627f2e3a42f38b25e0687cc';
    let { code } = ctx.request.body;

    const api = `https://api.weixin.qq.com/sns/jscode2session?appid=${ appid }&secret=${ secret }&js_code=${ code }&grant_type=authorization_code`;
    // 通过 wx.login 接口获得临时登录凭证 code 后
    // 传到开发者服务器调用此接口完成登录流程。
    const res = await rp.get({
      json: true,
      uri: api
    })
    const { session_key, openid } = res;

    // 连接数据库根据用户名查询用户信息
    let user = await userDao.FindUserName(openid);
    if (user.length === 0) {
      // 结果集长度为0则代表不存在该用户,先注册
      try {
        // 连接数据库插入用户信息
        let registerResult = await userDao.Register(openid, openid);
        if (registerResult.affectedRows === 1) {
          // 操作所影响的记录行数为1,则代表注册成功
          await login();// 登录
        }
      } catch (error) {
        console.log(error)
      }
    } else if (user.length === 1) {
      // 如果已经存在，直接登录
      await login();
    } else {
      ctx.body = {
        code: '500',
        msg: '未知错误'
      }
    }
    async function login () {
      // 连接数据库根据用户名和密码查询用户信息
      let tempUser = await userDao.Login(openid, openid);
      if (tempUser.length === 0) {
        // 登录失败
        ctx.body = {
          code: '004',
          msg: '登录失败'
        }
        return;
      }
      if (tempUser.length === 1) {
        // 登录成功
        const loginUser = {
          user_id: tempUser[0].user_id,
          openId: openid,
          sessionKey: session_key
        };
        // 保存用户信息到session
        ctx.session.user = loginUser;

        ctx.body = {
          code: '001',
          userId: tempUser[0].user_id,
          msg: '登录成功'
        }
        return;
      }
    }
  },
  /**
   * 查询是否存在某个用户名,用于注册时前端校验
   * @param {Object} ctx
   */
  FindUserName: async ctx => {
    let { userName } = ctx.request.body;

    // 校验用户名是否符合规则
    if (!checkUserName(ctx, userName)) {
      return;
    }
    // 连接数据库根据用户名查询用户信息
    let user = await userDao.FindUserName(userName);
    // 结果集长度为0则代表不存在该用户,可以注册
    if (user.length === 0) {
      ctx.body = {
        code: '001',
        msg: '用户名不存在，可以注册'
      }
      return;
    }

    //数据库设置用户名唯一
    //结果集长度为1则代表存在该用户,不可以注册
    if (user.length === 1) {
      ctx.body = {
        code: '004',
        msg: '用户名已经存在，不能注册'
      }
      return;
    }

    //数据库设置用户名唯一，
    //若存在user.length != 1 || user.length!=0
    //返回未知错误
    //正常不会出现
    ctx.body = {
      code: '500',
      msg: '未知错误'
    }
  },
  Register: async ctx => {
    let { userName, password } = ctx.request.body;

    // 校验用户信息是否符合规则
    if (!checkUserInfo(ctx, userName, password)) {
      return;
    }
    // 连接数据库根据用户名查询用户信息
    // 先判断该用户是否存在
    let user = await userDao.FindUserName(userName);

    if (user.length !== 0) {
      ctx.body = {
        code: '004',
        msg: '用户名已经存在，不能注册'
      }
      return;
    }

    try {
      // 连接数据库插入用户信息
      let registerResult = await userDao.Register(userName, password);
      // 操作所影响的记录行数为1,则代表注册成功
      if (registerResult.affectedRows === 1) {
        ctx.body = {
          code: '001',
          msg: '注册成功'
        }
        return;
      }
      // 否则失败
      ctx.body = {
        code: '500',
        msg: '未知错误，注册失败'
      }
    } catch (error) {
      reject(error);
    }
  }
};