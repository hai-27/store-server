/*
 * @Description: session配置
 * @Author: hai-27
 * @Date: 2020-04-07 22:28:43
 * @LastEditors: hai-27
 * @LastEditTime: 2020-04-07 22:29:28
 */
let store = {
  storage: {},
  set (key, session) {
    console.log(this.storage);
    this.storage[key] = session;
  },
  get (key) {
    return this.storage[key];
  },
  destroy (key) {
    delete this.storage[key];
  }
}
let CONFIG = {
  key: 'koa:session',
  maxAge: 600000,
  autoCommit: true,
  overwrite: true,
  httpOnly: true,
  signed: true,
  rolling: false,
  renew: false,
  store
}

module.exports = CONFIG;