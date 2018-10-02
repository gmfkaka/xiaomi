SET NAMES UTF8;
DROP DATABASE IF EXISTS mi;
CREATE DATABASE mi CHARSET=UTF8;
USE mi;


/**1.首页轮播表**/
CREATE TABLE mi_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/**插入轮播广告图**/
INSERT INTO `mi_index_carousel` VALUES ('1', 'img/carousel/item1.jpg', '轮播广告商品1', '#');
INSERT INTO `mi_index_carousel` VALUES ('2', 'img/carousel/item2.jpg', '轮播广告商品2', '#');
INSERT INTO `mi_index_carousel` VALUES ('3', 'img/carousel/item3.jpg', '轮播广告商品3', '#');
INSERT INTO `mi_index_carousel` VALUES ('4', 'img/carousel/item4.jpg', '轮播广告商品4', '#');


/**2.首页产品表**/
CREATE TABLE mi_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  floor VARCHAR(8),
  title VARCHAR(64),
  subtitle VARCHAR(128),
  img VARCHAR(128),
  price VARCHAR(16),
  del_price VARCHAR(16),
  comment VARCHAR(256),
  author VARCHAR(16),
  comment_counts VARCHAR(16)
);


/**2.1 mi-flash 插入数据**/
INSERT INTO `mi_index_product` VALUES ('1',  'mi-flash', '小米空气净化器','双风机 净化能力高达 406m³/h','img/product/flash-1.jpg','899元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('2',  'mi-flash', '小米蓝牙耳机','2015德国IF大奖，高清通话音质','img/product/flash-2.jpg','79元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('3',  'mi-flash', '小钢炮蓝牙音箱','12小时超长播放 金属机身外壳','img/product/flash-3.jpg','99元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('4',  'mi-flash', '小米移动电源10000mAh','高密度进口电芯，仅名片大小','img/product/flash-4.jpg','99元',NULL,NULL,NULL,NULL);


/**2.2 F1-手机 插入数据**/
INSERT INTO `mi_index_product` VALUES ('5',  'F1', '红米6A','AI人脸解锁 小巧全面屏','img/product/f1-item1.jpg','599元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('6',  'F1', '小米8 6+64GB','全球首款双屏GPS 骁龙845处理器','img/product/f1-item2.jpg','2699元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('7',  'F1', '小米8SE 4+64GB','AI超感光双摄 三星AMOLED 屏幕','img/product/f1-item3.jpg','1799元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('8',  'F1', '小米MIX2S 8+256GB','骁龙845年度旗舰处理器','img/product/f1-item4.jpg','3999元',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('9',  'F1', '小米6X 4+32GB','全索尼相机 骁龙660 AIE处理器','img/product/f1-item5.jpg','1299元','1499',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('10',  'F1', '小米Max2 4+64GB','6.44"大屏 5300Mah大电池','img/product/f1-item6.jpg','1199元','1699',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('11',  'F1', '小米Mix2 全陶瓷尊享版','全面屏2.0 Unibody全陶瓷','img/product/f1-item7.jpg','2799元','4699',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('12',  'F1', '红米S2 3+32GB','前置1600万超大像素智能美拍','img/product/f1-item8.jpg','1199元',NULL,NULL,NULL,NULL);


/**2.3 F2-家电 插入数据**/
INSERT INTO `mi_index_product` VALUES ('13',  'F2', '','','img/product/f2-left-top.jpg','',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('14',  'F2', '','','img/product/f2-left-bottom.jpg','',NULL,NULL,NULL,NULL);


INSERT INTO `mi_index_product` VALUES ('15',  'F2', '小米电视4A 43寸青春版','全高清屏 / 人工智能语音','img/product/f2-right-item1.jpg','1699',NULL,'小米电视给我惊喜，昨天上午下单，第二天上午就送到家啦...','来自于 雷军 的评论',NULL);
INSERT INTO `mi_index_product` VALUES ('16',  'F2', '小米电视4C 50英寸','4K HDR / 人工智能语音','img/product/f2-right-item2.jpg','1999','2199',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('17',  'F2', '13.3"小米笔记本Air i5 8G 256G','全金属超博机身搭配独显','img/product/f2-right-item3.jpg','5199',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('18',  'F2', '15.6"小米笔记本Pro i7 16G','性能更强悍的专业笔记本','img/product/f2-right-item4.jpg','6999',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('19',  'F2', '米家空气净化器Pro','OLED显示屏 / 激光颗粒物传感器','img/product/f2-right-item5.png','1199','1499',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('20',  'F2', '米家电水壶','一杯水，是一家人的安心','img/product/f2-right-item6.jpg','99',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('21',  'F2', '米家LED呼吸灯','用光线，还原理想生活','img/product/f2-right-item7.png','399',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('22',  'F2', '小米净水器','','img/product/f2-right-item8.jpg','1799',NULL,NULL,NULL,NULL);

/**2.3 F3-智能 插入数据**/
INSERT INTO `mi_index_product` VALUES ('23',  'F3', '','','img/product/f3-left-top.jpg','',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('24',  'F3', '','','img/product/f3-left-bottom.jpg','',NULL,NULL,NULL,NULL);


INSERT INTO `mi_index_product` VALUES ('25',  'F3', '米家飞利浦智睿灯二代','感知环境光，助攻优化场景照明','img/product/f3-right-item1.jpg','189','199','小米电视给我惊喜，昨天上午下单，第二天上午就送到家啦...','来自于 雷军 的评论',NULL);
INSERT INTO `mi_index_product` VALUES ('26',  'F3', '小米手环','','img/product/f3-right-item2.jpg','169',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('27',  'F3', '小米体重秤','高精度压力传感器 / 手机管理全家健康','img/product/f3-right-item3.jpg','99',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('28',  'F3', '米家IH电饭煲4L','IH-电磁环绕加热','img/product/f3-right-item4.png','599',NULL,NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('29',  'F3', '车载空气净化器(USB车充版)','高效净化车内空气','img/product/f3-right-item5.jpg','389','499',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('30',  'F3', '米家行车记录仪','晚上能拍清车牌的行车记录仪','img/product/f3-right-item6.jpg','319','349',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('31',  'F3', '米家声波电动牙刷','磁悬浮声波马达，定制多种刷牙模式','img/product/f3-right-item7.jpg','185','199',NULL,NULL,NULL);
INSERT INTO `mi_index_product` VALUES ('32',  'F3', '小米VR眼镜','','img/product/f3-right-item8.jpg','299',NULL,NULL,NULL,NULL);

/**2.4 推荐产品 插入数据**/
INSERT INTO `mi_index_product` VALUES ('33',  'recommend', '小米MIX 2S 艺术特别版','','img/product/rec-item1.jpg','3999',NULL,NULL,NULL,'138人好评');
INSERT INTO `mi_index_product` VALUES ('34',  'recommend', '红米5 全网通 4GB内存','','img/product/rec-item2.jpg','899',NULL,NULL,NULL,'792人好评');
INSERT INTO `mi_index_product` VALUES ('35',  'recommend', '小米Max2 移动4G+版','','img/product/rec-item3.jpg','899',NULL,NULL,NULL,'33人好评');
INSERT INTO `mi_index_product` VALUES ('36',  'recommend', '小米游戏本15.6"i5 8G 1T+12...','','img/product/rec-item4.jpg','5999',NULL,NULL,NULL,'233人好评');
INSERT INTO `mi_index_product` VALUES ('37',  'recommend', '红米Note 5A 全网通版','','img/product/rec-item5.jpg','1299',NULL,NULL,NULL,'3031人好评');

/**2.4 热评产品 插入数据**/
INSERT INTO `mi_index_product` VALUES ('38',  'hot-comment', '小米插线板','','img/product/hot-comment-1.png','49',NULL,'东西真心不错，用过最好的插线板，做工外观没得挑剔，3个USB接口很实用，充电快，建议不包邮的应该在...','来自wxy19829382的评价',NULL);
INSERT INTO `mi_index_product` VALUES ('39',  'hot-comment', '米兔定位电话','','img/product/hot-comment-2.png','169',NULL,'>每个功能都非常人性化，非常贴心！会一直支持始终以用户需求为己任，提供优质炫酷产品的小米！谢谢小米！','来自往事随风1988的评价',NULL);
INSERT INTO `mi_index_product` VALUES ('40',  'hot-comment', '米家IH电饭煲 4L','','img/product/hot-comment-3.png','599',NULL,'东西真心不错，用过最好的插线板，做工外观没得挑剔，3个USB接口很实用，充电快，建议不包邮的应该在...','来自流星的评价',NULL);
INSERT INTO `mi_index_product` VALUES ('41',  'hot-comment', '米家智能故事机','','img/product/hot-comment-4.png','199',NULL,'非常可爱，一拿到小宝宝先high了一把，同事也想买，真的很不错啊，希望早点大卖','来自sokd3382的评价',NULL);

/**3.列表产品表**/
CREATE TABLE mi_list_product(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price VARCHAR(16),
  del_price VARCHAR(16),
);
INSERT INTO `mi_list_product` VALUES('','小米8 全网通版 6GB内存 256GB','3199元','3299元');
INSERT INTO `mi_list_product` VALUES('','小米6X 全网通版 6GB内存 64GB','1599元','1799元');
INSERT INTO `mi_list_product` VALUES('','红米S2 全网通版 4GB内存 64GB','999元','1299元');
INSERT INTO `mi_list_product` VALUES('','红米Note 5 全网通版 6GB内存','1499元','1699元');
INSERT INTO `mi_list_product` VALUES('','小米手机5s 高配全网通版 3GB内存','1999元','2199元');
INSERT INTO `mi_list_product` VALUES('','红米手机 4 高配全网通版 3GB内存 32GB','999元','1099元');
INSERT INTO `mi_list_product` VALUES('','小米8 SE 全网通版 4GB内存 64GB','1699元','1799元');
INSERT INTO `mi_list_product` VALUES('','红米5 Plus 全网通版 3GB内存','999元','1199元');
INSERT INTO `mi_list_product` VALUES('','小米Note 3 硅胶保护套','29元','69元');
INSERT INTO `mi_list_product` VALUES('','Mi MIX 2S 硅胶保护套','59元','89元');
INSERT INTO `mi_list_product` VALUES('11','小米 8 SE 硅胶保护套','49元','59元');
INSERT INTO `mi_list_product` VALUES('12','红米Note 5极简防摔保护壳','19元','39元');
INSERT INTO `mi_list_product` VALUES('13','红米6 Pro 全网通版 4GB内存 64GB','1249元','1299元');
INSERT INTO `mi_list_product` VALUES('14','红米6 全网通版 4GB内存 64GB','849元','999元');
INSERT INTO `mi_list_product` VALUES('15','小米Max 3 全网通版 4GB内存 64GB','1699元','1999元');
INSERT INTO `mi_list_product` VALUES('16','小米8 青春 全网通版 6GB内存','1699元','1999元');

/**4.产品列表图片表**/
CREATE TABLE mi_list_pics(
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  list_id INT,
  img1 VARCHAR(64),
  img2 VARCHAR(64),
  img3 VARCHAR(64)
);
INSERT INTO `mi_list_pics` VALUES('','1','img/product_list/item1-pic1.jpg','img/product_list/item1-pic2.jpg','img/product_list/item1-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','2','img/product_list/item2-pic1.jpg','img/product_list/item2-pic2.jpg','img/product_list/item2-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','3','img/product_list/item3-pic1.jpg','img/product_list/item3-pic2.jpg','img/product_list/item3-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','4','img/product_list/item4-pic1.jpg','img/product_list/item4-pic2.jpg','img/product_list/item4-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','5','img/product_list/item5-pic1.jpg','img/product_list/item5-pic2.jpg','img/product_list/item5-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','6','img/product_list/item6-pic1.jpg','img/product_list/item6-pic2.jpg','img/product_list/item6-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','7','img/product_list/item7-pic1.jpg','img/product_list/item7-pic2.jpg','img/product_list/item7-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','8','img/product_list/item8-pic1.jpg','img/product_list/item8-pic2.jpg','img/product_list/item8-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','9','img/product_list/item9-pic1.jpg','img/product_list/item9-pic2.jpg','img/product_list/item9-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','10','img/product_list/item10-pic1.png','img/product_list/item10-pic2.png','img/product_list/item10-pic3.png');
INSERT INTO `mi_list_pics` VALUES('','11','img/product_list/item11-pic1.jpg','img/product_list/item11-pic2.jpg','img/product_list/item11-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','12','img/product_list/item12-pic1.jpg','img/product_list/item12-pic2.jpg','img/product_list/item12-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','13','img/product_list/item13-pic1.jpg','img/product_list/item13-pic2.jpg','img/product_list/item13-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','14','img/product_list/item14-pic1.jpg','img/product_list/item14-pic2.jpg','img/product_list/item14-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','15','img/product_list/item15-pic1.jpg','img/product_list/item15-pic2.jpg','img/product_list/item15-pic3.jpg');
INSERT INTO `mi_list_pics` VALUES('','16','img/product_list/item16-pic1.jpg','img/product_list/item16-pic2.jpg','img/product_list/item16-pic3.jpg');

/**2.用户信息表**/
CREATE TABLE mi_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    nickname VARCHAR(32),
    upwd VARCHAR(32),
    phone VARCHAR(16),
    avatar VARCHAR(128),
    gender INT
);



