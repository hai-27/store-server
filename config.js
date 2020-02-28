/*
 * @Description: 全局配置信息
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-28 23:21:30
 */
const path = require('path');

module.exports = {
  Port: 3000, // 启动端口
  staticDir: path.resolve('./public'), // 静态资源路径
  uploadDir: path.join(__dirname, path.resolve('public/')), // 上传文件路径
  // 数据库连接设置
  dbConfig: {
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'storeDB'
  }
}