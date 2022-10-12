/*
 * @Description: 用户模块数据持久层
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-27 02:12:30
 */
const db = require('./db.js');

module.exports = {
  login: async (usercode, password) => {
    const sql = 'select * from user where usercode = ? and password = ?';
    return await db.query(sql, [usercode, password]);
  },
  getUserList: async () => {
    const sql = 'select * from user';
    return await db.query(sql);
  }
}