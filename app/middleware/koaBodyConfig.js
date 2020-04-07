/*
 * @Description: koaBody 配置
 * @Author: hai-27
 * @Date: 2020-04-07 23:18:29
 * @LastEditors: hai-27
 * @LastEditTime: 2020-04-07 23:21:35
 */
let { uploadDir } = require('../../config');

const koaBodyConfig = {
  multipart: true,
  // parsedMethods默认是['POST', 'PUT', 'PATCH']
  parsedMethods: ['POST', 'PUT', 'PATCH', 'GET', 'HEAD', 'DELETE'],
  formidable: {
    uploadDir: uploadDir, // 设置文件上传目录
    keepExtensions: true, // 保持文件的后缀
    maxFieldsSize: 2 * 1024 * 1024, // 文件上传大小限制
    onFileBegin: (name, file) => { // 文件上传前的设置
      // console.log(`name: ${name}`);
      // console.log(file);
    }
  }
}

module.exports = koaBodyConfig;