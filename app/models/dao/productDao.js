/*
 * @Description: 商品模块数据持久层
 * @Author: hai-27
 * @Date: 2020-02-07 16:51:56
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-27 15:42:52
 */
const db = require('./db.js');

module.exports = {
  // 连接数据库获取商品分类
  GetCategory: async () => {
    const sql = "select * from category";
    return await db.query(sql, []);
  },
  // 连接数据库根据商品分类名称获取分类id
  GetCategoryId: async (categoryName) => {
    const sql = "select * from category where category_name = ?";
    const category = await db.query(sql, [categoryName]);
    return category[0].category_id;
  },
  // 连接数据库,根据商品分类id获取首页展示的商品信息
  GetPromoProduct: async (categoryID) => {
    const sql = "select * from product where category_id = ? order by product_sales desc limit 7";
    return await db.query(sql, categoryID);
  },
  // 连接数据库,分页获取所有的商品信息
  GetAllProduct: async (offset = 0, rows = 0) => {
    let sql = "select * from product ";
    if (rows != 0) {
      sql += "limit " + offset + "," + rows;
    }
    return await db.query(sql, []);
  },
  // 连接数据库,根据商品分类id,分页获取商品信息
  GetProductByCategory: async (categoryID, offset = 0, rows = 0) => {
    let sql = "select * from product where category_id = ? ";

    for (let i = 0; i < categoryID.length - 1; i++) {
      sql += "or category_id = ? ";
    }
    if (rows != 0) {
      sql += "order by product_sales desc limit " + offset + "," + rows;
    }

    return await db.query(sql, categoryID);
  },
  // 连接数据库,根据搜索条件,分页获取商品信息
  GetProductBySearch: async (search, offset = 0, rows = 0) => { 
    let sql = `select * from product where product_name like "%${ search }%" or product_title like "%${ search }%" or product_intro like "%${ search }%"`;

    if (rows != 0) {
      sql += "order by product_sales desc limit " + offset + "," + rows;
    }
    
    return await db.query(sql, []);
  },
  // 连接数据库,根据商品id,获取商品详细信息
  GetProductById: async (id) => {
    const sql = 'select * from product where product_id = ?';
    return await db.query(sql, id);
  },
  // 连接数据库,根据商品id,获取商品图片
  GetDetailsPicture: async (productID) => {
    const sql = "select * from product_picture where product_id = ? ";
    return await db.query(sql, productID);
  }
}