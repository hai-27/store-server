/*
 * @Description: 订单模块控制器
 * @Author: hai-27
 * @Date: 2020-02-24 16:35:22
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-27 14:32:16
 */
const orderDao = require('../models/dao/orderDao');
const shoppingCartDao = require('../models/dao/shoppingCartDao');
const productDao = require('../models/dao/productDao');
const checkLogin = require('../middleware/checkLogin');

module.exports = {
  /**
   * 获取用户的所有订单信息
   * @param {Object} ctx
   */
  GetOrder: async ctx => {
    let { user_id } = ctx.request.body;
    // 校验用户是否登录
    if (!checkLogin(ctx, user_id)) {
      return;
    }
    // 获取所有的订单id
    const ordersGroup = await orderDao.GetOrderGroup(user_id);

    // 该用户没有订单,直接返回信息
    if (ordersGroup.length == 0) {
      ctx.body = {
        code: '002',
        msg: '该用户没有订单信息'
      }
      return;
    }

    // 获取所有的订单详细信息
    const orders = await orderDao.GetOrder(user_id);

    let ordersList = [];
    // 生成每个订单的详细信息列表
    for (let i = 0; i < ordersGroup.length; i++) {
      const orderID = ordersGroup[i];
      let tempOrder = [];

      for (let j = 0; j < orders.length; j++) {
        const order = orders[j];

        if (orderID.order_id == order.order_id) {
          // 获取每个商品详细信息
          const product = await productDao.GetProductById(order.product_id);
          order.product_name = product[0].product_name;
          order.product_picture = product[0].product_picture;

          tempOrder.push(order);
        }
      }
      ordersList.push(tempOrder);
    }

    ctx.body = {
      code: '001',
      orders: ordersList
    }

  },
  /**
   * 添加用户订单信息
   * @param {Object} ctx
   */
  AddOrder: async (ctx) => {
    let { user_id, products } = ctx.request.body;
    // 校验用户是否登录
    if (!checkLogin(ctx, user_id)) {
      return;
    }

    // 获取当前时间戳
    const timeTemp = new Date().getTime();
    // 生成订单id：用户id+时间戳(string)
    const orderID = +("" + user_id + timeTemp);

    let data = [];
    // 根据数据库表结构生成字段信息
    for (let i = 0; i < products.length; i++) {
      const temp = products[i];
      let product = [orderID, user_id, temp.productID, temp.num, temp.price, timeTemp];
      data.push(...product);
    }

    try {
      // 把订单信息插入数据库
      const result = await orderDao.AddOrder(products.length, data);

      // 插入成功
      if (result.affectedRows == products.length) {
        //删除购物车
        let rows = 0;
        for (let i = 0; i < products.length; i++) {
          const temp = products[i];
          const res = await shoppingCartDao.DeleteShoppingCart(user_id, temp.productID);
          rows += res.affectedRows;
        }
        //判断删除购物车是否成功
        if (rows != products.length) {
          ctx.body = {
            code: '002',
            msg: '购买成功,但购物车没有更新成功'
          }
          return;
        }

        ctx.body = {
          code: '001',
          msg: '购买成功'
        }
      } else {
        ctx.body = {
          code: '004',
          msg: '购买失败,未知原因'
        }
      }
    } catch (error) {
      reject(error);
    }
  }
}