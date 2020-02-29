/*
 * @Description: 插入模拟的数据库信息语句
 * @Author: hai-27
 * @Date: 2020-02-09 14:40:32
 * @LastEditors: hai-27
 * @LastEditTime: 2020-02-25 22:39:16
 */
insert into category
values(null, "手机");

insert into category
values(null, "电视机");
insert into category
values(null, "空调");
insert into category
values(null, "洗衣机");

insert into category
values(null, "保护套");
insert into category
values(null, "保护膜");
insert into category
values(null, "充电器");
insert into category
values(null, "充电宝");


insert into product
values
  (null, 'Redmi K30', 1, '120Hz流速屏，全速热爱', '120Hz高帧率流速屏/ 索尼6400万前后六摄 / 6.67''小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC', 'public/imgs/phone/Redmi-k30.png', 2000.00, 1599.00, 10, 0),
  (null, 'Redmi K30 5G', 1, '双模5G,120Hz流速屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67''小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'public/imgs/phone/Redmi-k30-5G.png', 2599.00, 2599.00, 10, 0),
  (null, '小米CC9 Pro', 1, '1亿像素,五摄四闪', '1亿像素主摄 / 全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 / 5260mAh ⼤电量 / 标配 30W疾速快充 / ⼩米⾸款超薄屏下指纹 / 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器', 'public/imgs/phone/Mi-CC9.png', 2799.00, 2599.00, 20, 0),
  (null, 'Redmi 8', 1, '5000mAh超长续航', '5000mAh超长续航 / 高通骁龙439八核处理器 / 4GB+64GB', 'public/imgs/phone/Redmi-8.png', 799.00, 699.00, 20, 0),
  (null, 'Redmi 8A', 1, '5000mAh超长续航', '5000mAh超长续航 / 高通骁龙439八核处理器 / 4GB+64GB / 1200万AI后置相机', 'public/imgs/phone/Redmi-8A.png', 599.00, 699.00, 20, 0),
  (null, 'Redmi Note8 Pro', 1, '6400万全场景四摄', '6400万四摄小金刚拍照新旗舰超强解析力，超震撼', 'public/imgs/phone/Redmi-Note8-pro.png', 1399.00, 1199.00, 20, 0),
  (null, 'Redmi Note8', 1, '千元4800万四摄', '千元4800万四摄 | 高通骁龙665 | 小金刚品质保证', 'public/imgs/phone/Redmi-Note8.png', 999.00, 999.00, 20, 0),
  (null, 'Redmi 7A', 1, '小巧大电量 持久流畅', '小巧大电量，持久又流畅骁龙8核高性能处理器 | 4000mAh超长续航 | AI人脸解锁 | 整机防泼溅', 'public/imgs/phone/Redmi-7A.png', 599.00, 539.00, 20, 0);

insert into product
values
  (null, '小米电视4A 32英寸', 2, '人工智能系统，高清液晶屏', '小米电视4A 32英寸 | 64位四核处理器 | 1GB+4GB大内存 | 人工智能系统', 'public/imgs/appliance/MiTv-4A-32.png', 799.00, 799.00, 10, 0),
  (null, '小米全面屏电视E55A', 2, '全面屏设计，人工智能语音', '全面屏设计 | 内置小爱同学 | 4K + HDR | 杜比DTS | PatchWall | 海量内容 | 2GB + 8GB大存储 | 64位四核处理器', 'public/imgs/appliance/MiTv-E55A.png', 2099.00, 1899.00, 10, 0),
  (null, '小米全面屏电视E65A', 2, '全面屏设计，人工智能语音', '人工智能语音系统 | 海量影视内容 | 4K 超高清屏 | 杜比音效 | 64位四核处理器 | 2GB + 8GB大存储', 'public/imgs/appliance/MiTv-E65A.png', 3999.00, 2799.00, 10, 0),
  (null, '小米电视4X 43英寸', 2, 'FHD全高清屏，人工智能语音', '人工智能语音系统 | FHD全高清屏 | 64位四核处理器 | 海量片源 | 1GB+8GB大内存 | 钢琴烤漆', 'public/imgs/appliance/MiTv-4X-43.png', 1499.00, 1299.00, 10, 0),
  (null, '小米电视4C 55英寸', 2, '4K HDR，人工智能系统', '人工智能 | 大内存 | 杜比音效 | 超窄边 | 4K HDR | 海量片源 | 纤薄机身| 钢琴烤漆', 'public/imgs/appliance/MiTv-4C-55.png', 1999.00, 1799.00, 10, 0),
  (null, '小米电视4A 65英寸', 2, '4K HDR，人工智能系统', '人工智能 | 大内存 | 杜比音效 | 超窄边 | 4K HDR | 海量片源 | 纤薄机身| 钢琴烤漆', 'public/imgs/appliance/MiTv-4A-65.png', 2999.00, 2799.00, 10, 0),
  (null, '小米壁画电视 65英寸', 2, '壁画外观，全面屏，远场语音', '纯平背板 | 通体13.9mm | 远场语音 | 4K+HDR | 杜比+DTS | 画框模式 | 内置小爱同学 | PatchWall | SoundBar+低音炮 | 四核处理器+大存储', 'public/imgs/appliance/MiTv-ArtTv-65.png', 6999.00, 6999.00, 10, 0);

insert into product
values
  (null, '米家互联网空调C1（一级能效）', 3, '变频节能省电，自清洁', '一级能效 | 1.5匹 | 全直流变频 | 高效制冷/热 | 静音设计 | 自清洁 | 全屋互联', 'public/imgs/appliance/AirCondition-V1C1.png', 2699.00, 2599.00, 20, 10),
  (null, '米家空调', 3, '出众静音，快速制冷热', '大1匹 | 三级能效 | 静音 | 快速制冷热 | 广角送风 | 除湿功能 | 高密度过滤网 | 典雅外观', 'public/imgs/appliance/AirCondition-F3W1.png', 1799.00, 1699.00, 20, 8);

insert into product
values
  (null, '米家互联网洗烘一体机 Pro 10kg', 4, '智能洗烘，省心省力', '国标双A+级洗烘能力 / 22种洗烘模式 / 智能投放洗涤剂 / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 除菌率达99.9%+', 'public/imgs/appliance/Washer-Pro-10.png', 2999.00, 2999.00, 20, 7);

insert into product
values
  (null, 'Redmi K20/ K20 Pro 怪力魔王保护壳', 5, '怪力魔王专属定制', '优选PC材料，强韧张力，经久耐用 / 精选开孔，全面贴合机身 / 手感轻薄细腻，舒适无负担 / 三款颜色可选，彰显个性，与众不同', 'public/imgs/accessory/protectingShell-RedMi-K20&pro.png', 39.00, 39.00, 20, 10),
  (null, '小米9 ARE U OK保护壳', 5, '一个与众不同的保护壳', '彰显独特个性 / 轻薄无负担 / 优选PC材料 / 贴合机身 / 潮流五色', 'public/imgs/accessory/protectingShell-Mi-9.png', 49.00, 39.00, 20, 10);

insert into product
values
  (null, '小米CC9&小米CC9美图定制版 标准高透贴膜', 6, '高清透亮，耐磨性强', '耐磨性强，防护更出众 / 疏油疏水，有效抗水抗脏污 / 高清透亮，保留了原生屏幕的亮丽颜色和清晰度 / 操作灵敏，智能吸附 / 进口高端PET材质，裸机般手感', 'public/imgs/accessory/protectingMen-Mi-CC9.png', 19.00, 19.00, 20, 9),
  (null, '小米CC9e 标准高透贴膜', 6, '高清透亮，耐磨性强', '耐磨性强，防护更出众 / 疏油疏水，有效抗水抗脏污 / 高清透亮，保留了原生屏幕的亮丽颜色和清晰度 / 操作灵敏，智能吸附 / 进口高端PET材质，裸机般手感', 'public/imgs/accessory/protectingMen-Mi-CC9e.png', 19.00, 19.00, 20, 9);

insert into product
values
  (null, '小米USB充电器30W快充版（1A1C）', 7, '多一种接口，多一种选择', '双口输出 / 30W 输出 / 可折叠插脚 / 小巧便携', 'public/imgs/accessory/charger-30w.png', 59.00, 59.00, 20, 8),
  (null, '小米USB充电器快充版（18W）', 7, '安卓、苹果设备均可使用', '支持QC3.0设备充电 / 支持iOS设备充电/ 美观耐用', 'public/imgs/accessory/charger-18w.png', 29.00, 29.00, 20, 8),
  (null, '小米USB充电器60W快充版（6口）', 7, '6口输出，USB-C输出接口', '6口输出 / USB-C输出接口 / 支持QC3.0快充协议 / 总输出功率60W', 'public/imgs/accessory/charger-60w.png', 129.00, 129.00, 20, 0),
  (null, '小米USB充电器36W快充版（2口）', 7, '6多重安全保护，小巧便携', '双USB输出接口 / 支持QC3.0快充协议 / 多重安全保护 / 小巧便携', 'public/imgs/accessory/charger-36w.png', 59.00, 59.00, 20, 0),
  (null, '小米车载充电器快充版', 7, '让爱车成为移动充电站', 'QC3.0 双口输出 / 智能温度控制 / 5重安全保护 / 兼容iOS&Android设备', 'public/imgs/accessory/charger-car.png', 69.00, 69.00, 20, 0),
  (null, '小米车载充电器快充版(37W)', 7, '双口快充，车载充电更安全', '单口27W 快充 / 双口输出 / 多重安全保护', 'public/imgs/accessory/charger-car-37w.png', 49.00, 49.00, 20, 0),
  (null, '小米二合一移动电源（充电器）', 7, '一个设备多种用途', '5000mAh充沛电量 / 多协议快充 / USB 口输出', 'public/imgs/accessory/charger-tio.png', 99.00, 99.00, 20, 0);

insert into product
values
  (null, '小米无线充电宝青春版10000mAh', 8, '能量满满，无线有线都能充', '10000mAh大容量 / 支持边充边放 / 有线无线都能充 / 双向快充', 'public/imgs/accessory/charger-10000mAh.png', 129.00, 129.00, 20, 8);

insert into product
values
  (null, '小米CC9 Pro/尊享版 撞色飘带保护壳', 5, '全面贴合，无感更舒适', '优选环保PC材质，强韧张力，全面贴合，无感更舒适', 'public/imgs/accessory/protectingShell-Mi-CC9Pro.png', 69.00, 69.00, 20, 0),
  (null, 'Redmi K20系列 幻境之心保护壳', 5, '柔软坚韧,全面贴合', '优质环保材质，柔软坚韧 / 全面贴合，有效抵抗灰尘 / 鲜亮三种颜色可选，为爱机随时换装', 'public/imgs/accessory/protectingShell-RedMi-K20.png', 39.00, 39.00, 20, 0),
  (null, '小米9 SE 街头风保护壳黑色', 5, '个性时尚,细节出众', '个性时尚 / 细节出众 / 纤薄轻巧 / 多彩时尚', 'public/imgs/accessory/protectingShell-Mi-9SE.png', 49.00, 49.00, 20, 0),
  (null, '小米9 街头风保护壳 红色', 5, '个性时尚,细节出众', '时尚多彩 / 细节出众 / 纤薄轻巧 / 是腕带也是支架', 'public/imgs/accessory/protectingShell-Mi-9-red.png', 49.00, 49.00, 20, 0),
  (null, '小米MIX 3 极简保护壳蓝色', 5, '时尚简约设计，手感细腻顺滑', '时尚简约设计，手感细腻顺滑 / 优质环保PC原材料，强韧张力，经久耐用 / 超薄 0.8MM厚度', 'public/imgs/accessory/protectingShell-Mix-3.png', 49.00, 12.90, 20, 0);

insert into product_picture
values
  (null, 1, "public/imgs/phone/picture/Redmi-k30-1.png", null),
  (null, 1, "public/imgs/phone/picture/Redmi-k30-2.png", null),
  (null, 1, "public/imgs/phone/picture/Redmi-k30-3.png", null),
  (null, 1, "public/imgs/phone/picture/Redmi-k30-4.png", null),
  (null, 1, "public/imgs/phone/picture/Redmi-k30-5.png", null);

insert into product_picture
values
  (null, 2, "public/imgs/phone/picture/Redmi K30 5G-1.jpg", null),
  (null, 2, "public/imgs/phone/picture/Redmi K30 5G-2.jpg", null),
  (null, 2, "public/imgs/phone/picture/Redmi K30 5G-3.jpg", null),
  (null, 2, "public/imgs/phone/picture/Redmi K30 5G-4.jpg", null),
  (null, 2, "public/imgs/phone/picture/Redmi K30 5G-5.jpg", null);

insert into product_picture
values
  (null, 3, "public/imgs/phone/picture/MI CC9 Pro-1.jpg", null),
  (null, 3, "public/imgs/phone/picture/MI CC9 Pro-2.jpg", null),
  (null, 3, "public/imgs/phone/picture/MI CC9 Pro-3.jpg", null),
  (null, 3, "public/imgs/phone/picture/MI CC9 Pro-4.jpg", null),
  (null, 3, "public/imgs/phone/picture/MI CC9 Pro-5.jpg", null),
  (null, 3, "public/imgs/phone/picture/MI CC9 Pro-6.jpg", null);

insert into product_picture
values
  (null, 4, "public/imgs/phone/picture/Redmi 8-1.jpg", null),
  (null, 4, "public/imgs/phone/picture/Redmi 8-2.jpg", null),
  (null, 4, "public/imgs/phone/picture/Redmi 8-3.jpg", null),
  (null, 4, "public/imgs/phone/picture/Redmi 8-4.jpg", null),
  (null, 4, "public/imgs/phone/picture/Redmi 8-5.jpg", null);

insert into product_picture
values
  (null, 5, "public/imgs/phone/picture/Redmi 8A-1.jpg", null);

insert into product_picture
values
  (null, 6, "public/imgs/phone/picture/Redmi Note8 Pro-1.png", null),
  (null, 6, "public/imgs/phone/picture/Redmi Note8 Pro-2.png", null),
  (null, 6, "public/imgs/phone/picture/Redmi Note8 Pro-3.png", null),
  (null, 6, "public/imgs/phone/picture/Redmi Note8 Pro-4.png", null),
  (null, 6, "public/imgs/phone/picture/Redmi Note8 Pro-5.png", null);

insert into product_picture
values
  (null, 7, "public/imgs/phone/picture/Redmi Note8-1.jpg", null),
  (null, 7, "public/imgs/phone/picture/Redmi Note8-2.jpg", null),
  (null, 7, "public/imgs/phone/picture/Redmi Note8-3.jpg", null),
  (null, 7, "public/imgs/phone/picture/Redmi Note8-4.jpg", null),
  (null, 7, "public/imgs/phone/picture/Redmi Note8-5.jpg", null);

insert into product_picture
values
  (null, 8, "public/imgs/phone/picture/Redmi 7A-1.jpg", null),
  (null, 8, "public/imgs/phone/picture/Redmi 7A-2.jpg", null),
  (null, 8, "public/imgs/phone/picture/Redmi 7A-3.jpg", null),
  (null, 8, "public/imgs/phone/picture/Redmi 7A-4.jpg", null),
  (null, 8, "public/imgs/phone/picture/Redmi 7A-5.jpg", null);

insert into product_picture
values
  (null, 9, "public/imgs/phone/picture/MiTv-4A-32-1.jpg", null),
  (null, 9, "public/imgs/phone/picture/MiTv-4A-32-2.jpg", null),
  (null, 9, "public/imgs/phone/picture/MiTv-4A-32-3.jpg", null),
  (null, 9, "public/imgs/phone/picture/MiTv-4A-32-4.jpg", null);

insert into product_picture
values
  (null, 10, "public/imgs/phone/picture/MiTv-E55A-1.jpg", null),
  (null, 10, "public/imgs/phone/picture/MiTv-E55A-2.jpg", null),
  (null, 10, "public/imgs/phone/picture/MiTv-E55A-3.jpg", null),
  (null, 10, "public/imgs/phone/picture/MiTv-E55A-4.jpg", null);

insert into product_picture
values
  (null, 11, "public/imgs/phone/picture/MiTv-E65A-1.jpg", null),
  (null, 11, "public/imgs/phone/picture/MiTv-E65A-2.jpg", null),
  (null, 11, "public/imgs/phone/picture/MiTv-E65A-3.jpg", null),
  (null, 11, "public/imgs/phone/picture/MiTv-E65A-4.jpg", null);

insert into product_picture
values
  (null, 12, "public/imgs/phone/picture/MiTv-4X 43-1.jpg", null),
  (null, 12, "public/imgs/phone/picture/MiTv-4X 43-2.jpg", null),
  (null, 12, "public/imgs/phone/picture/MiTv-4X 43-3.jpg", null);

insert into product_picture
values
  (null, 13, "public/imgs/phone/picture/MiTv-4C 55-1.jpg", null),
  (null, 13, "public/imgs/phone/picture/MiTv-4C 55-2.jpg", null),
  (null, 13, "public/imgs/phone/picture/MiTv-4C 55-3.jpg", null);

insert into product_picture
values
  (null, 14, "public/imgs/phone/picture/MiTv-4A 65-1.jpg", null);

insert into product_picture
values
  (null, 15, "public/imgs/phone/picture/MiTv-ArtTv-65-1.jpg", null);

insert into product_picture
values
  (null, 16, "public/imgs/phone/picture/AirCondition-V1C1-1.jpg", null);

insert into product_picture
values
  (null, 17, "public/imgs/phone/picture/AirCondition-F3W1-1.jpg", null);

insert into product_picture
values
  (null, 18, "public/imgs/phone/picture/Washer-Pro-10-1.jpg", null),
  (null, 18, "public/imgs/phone/picture/Washer-Pro-10-2.jpg", null),
  (null, 18, "public/imgs/phone/picture/Washer-Pro-10-3.jpg", null),
  (null, 18, "public/imgs/phone/picture/Washer-Pro-10-4.jpg", null);

insert into product_picture
values
  (null, 19, "public/imgs/phone/picture/protectingShell-RedMi-K20&pro-1.jpg", null);

insert into product_picture
values
  (null, 20, "public/imgs/phone/picture/protectingShell-Mi-9-1.jpg", null),
  (null, 20, "public/imgs/phone/picture/protectingShell-Mi-9-2.jpg", null);

insert into product_picture
values
  (null, 21, "public/imgs/phone/picture/protectingMen-Mi-CC9-1.jpg", null);

insert into product_picture
values
  (null, 22, "public/imgs/phone/picture/protectingMen-Mi-CC9e-1.jpg", null);

insert into product_picture
values
  (null, 23, "public/imgs/phone/picture/charger-30w-1.jpg", null),
  (null, 23, "public/imgs/phone/picture/charger-30w-2.jpg", null),
  (null, 23, "public/imgs/phone/picture/charger-30w-3.jpg", null),
  (null, 23, "public/imgs/phone/picture/charger-30w-4.jpg", null);

insert into product_picture
values
  (null, 24, "public/imgs/phone/picture/charger-18w-1.jpg", null),
  (null, 24, "public/imgs/phone/picture/charger-18w-2.jpg", null),
  (null, 24, "public/imgs/phone/picture/charger-18w-3.jpg", null);

insert into product_picture
values
  (null, 25, "public/imgs/phone/picture/charger-60w-1.jpg", null),
  (null, 25, "public/imgs/phone/picture/charger-60w-2.jpg", null),
  (null, 25, "public/imgs/phone/picture/charger-60w-3.jpg", null),
  (null, 25, "public/imgs/phone/picture/charger-60w-4.jpg", null);

insert into product_picture
values
  (null, 26, "public/imgs/phone/picture/charger-36w-1.jpg", null),
  (null, 26, "public/imgs/phone/picture/charger-36w-2.jpg", null),
  (null, 26, "public/imgs/phone/picture/charger-36w-3.jpg", null),
  (null, 26, "public/imgs/phone/picture/charger-36w-4.jpg", null),
  (null, 26, "public/imgs/phone/picture/charger-36w-5.jpg", null);

insert into product_picture
values
  (null, 27, "public/imgs/phone/picture/charger-car-1.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-car-2.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-car-3.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-car-4.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-car-5.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-car-6.jpg", null);

insert into product_picture
values
  (null, 28, "public/imgs/phone/picture/charger-car-37w-1.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-car-37w-2.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-car-37w-3.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-car-37w-4.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-car-37w-5.jpg", null);

insert into product_picture
values
  (null, 29, "public/imgs/phone/picture/charger-tio-1.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-tio-2.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-tio-3.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-tio-4.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-tio-5.jpg", null);

insert into product_picture
values
  (null, 30, "public/imgs/phone/picture/charger-10000mAh-1.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-10000mAh-2.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-10000mAh-3.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-10000mAh-4.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-10000mAh-5.jpg", null);

insert into product_picture
values
  (null, 31, "public/imgs/phone/picture/protectingShell-Mi-CC9Pro-1.jpg", null);

insert into product_picture
values
  (null, 32, "public/imgs/phone/picture/protectingShell-RedMi-K20-1.jpg", null);

insert into product_picture
values
  (null, 33, "public/imgs/phone/picture/protectingShell-Mi-9SE-1.jpg", null);

insert into product_picture
values
  (null, 34, "public/imgs/phone/picture/protectingShell-Mi-9-red-1.jpg", null);

insert into product_picture
values
  (null, 35, "public/imgs/phone/picture/protectingShell-Mix-3-1.jpg", null);