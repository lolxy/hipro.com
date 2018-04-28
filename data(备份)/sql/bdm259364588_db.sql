/*
Navicat MySQL Data Transfer

Source Server         : bdm259364588.my3w.com
Source Server Version : 50173
Source Host           : bdm259364588.my3w.com:3306
Source Database       : bdm259364588_db

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-04-28 22:53:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hi_ad`
-- ----------------------------
DROP TABLE IF EXISTS `hi_ad`;
CREATE TABLE `hi_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_asset`
-- ----------------------------
DROP TABLE IF EXISTS `hi_asset`;
CREATE TABLE `hi_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `key` varchar(50) NOT NULL COMMENT '资源 key',
  `filename` varchar(50) DEFAULT NULL COMMENT '文件名',
  `filesize` int(11) DEFAULT NULL COMMENT '文件大小,单位Byte',
  `filepath` varchar(200) NOT NULL COMMENT '文件路径，相对于 upload 目录，可以为 url',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：删除，不可用',
  `meta` text COMMENT '其它详细信息，JSON格式',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀名，不包括点',
  `download_times` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_asset
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `hi_auth_access`;
CREATE TABLE `hi_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `hi_auth_rule`;
CREATE TABLE `hi_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_auth_rule
-- ----------------------------
INSERT INTO `hi_auth_rule` VALUES ('1', 'Admin', 'admin_url', 'admin/content/default', '', '内容管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('2', 'Api', 'admin_url', 'api/guestbookadmin/index', '', '所有留言', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('3', 'Api', 'admin_url', 'api/guestbookadmin/delete', '', '删除网站留言', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('4', 'Comment', 'admin_url', 'comment/commentadmin/index', '', '评论管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('5', 'Comment', 'admin_url', 'comment/commentadmin/delete', '', '删除评论', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('6', 'Comment', 'admin_url', 'comment/commentadmin/check', '', '评论审核', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('7', 'Portal', 'admin_url', 'portal/adminpost/index', '', '资讯管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('8', 'Portal', 'admin_url', 'portal/adminpost/listorders', '', '资讯排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('9', 'Portal', 'admin_url', 'portal/adminpost/top', '', '资讯置顶', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('10', 'Portal', 'admin_url', 'portal/adminpost/recommend', '', '资讯推荐', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('11', 'Portal', 'admin_url', 'portal/adminpost/move', '', '批量移动', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('12', 'Portal', 'admin_url', 'portal/adminpost/check', '', '资讯审核', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('13', 'Portal', 'admin_url', 'portal/adminpost/delete', '', '删除资讯', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('14', 'Portal', 'admin_url', 'portal/adminpost/edit', '', '编辑资讯', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('15', 'Portal', 'admin_url', 'portal/adminpost/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('16', 'Portal', 'admin_url', 'portal/adminpost/add', '', '添加资讯', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('17', 'Portal', 'admin_url', 'portal/adminpost/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('18', 'Portal', 'admin_url', 'portal/adminterm/default', '', '分类管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('19', 'Portal', 'admin_url', 'portal/adminterm/listorders', '', '文章分类排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('20', 'Portal', 'admin_url', 'portal/adminterm/delete', '', '删除分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('21', 'Portal', 'admin_url', 'portal/adminterm/edit', '', '编辑分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('22', 'Portal', 'admin_url', 'portal/adminterm/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('23', 'Portal', 'admin_url', 'portal/adminterm/add', '', '添加分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('24', 'Portal', 'admin_url', 'portal/adminterm/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('25', 'Portal', 'admin_url', 'portal/adminpage/index', '', '页面管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('26', 'Portal', 'admin_url', 'portal/adminpage/listorders', '', '页面排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('27', 'Portal', 'admin_url', 'portal/adminpage/delete', '', '删除页面', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('28', 'Portal', 'admin_url', 'portal/adminpage/edit', '', '编辑页面', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('29', 'Portal', 'admin_url', 'portal/adminpage/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('30', 'Portal', 'admin_url', 'portal/adminpage/add', '', '添加页面', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('31', 'Portal', 'admin_url', 'portal/adminpage/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('32', 'Admin', 'admin_url', 'admin/recycle/default', '', '回收站', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('33', 'Portal', 'admin_url', 'portal/adminpost/recyclebin', '', '资讯回收', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('34', 'Portal', 'admin_url', 'portal/adminpost/restore', '', '文章还原', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('35', 'Portal', 'admin_url', 'portal/adminpost/clean', '', '彻底删除', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('36', 'Portal', 'admin_url', 'portal/adminpage/recyclebin', '', '页面回收', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('37', 'Portal', 'admin_url', 'portal/adminpage/clean', '', '彻底删除', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('38', 'Portal', 'admin_url', 'portal/adminpage/restore', '', '页面还原', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('39', 'Admin', 'admin_url', 'admin/extension/default', '', '扩展工具', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('40', 'Admin', 'admin_url', 'admin/backup/default', '', '备份管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('41', 'Admin', 'admin_url', 'admin/backup/restore', '', '数据还原', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('42', 'Admin', 'admin_url', 'admin/backup/index', '', '数据备份', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('43', 'Admin', 'admin_url', 'admin/backup/index_post', '', '提交数据备份', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('44', 'Admin', 'admin_url', 'admin/backup/download', '', '下载备份', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('45', 'Admin', 'admin_url', 'admin/backup/del_backup', '', '删除备份', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('46', 'Admin', 'admin_url', 'admin/backup/import', '', '数据备份导入', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('47', 'Admin', 'admin_url', 'admin/plugin/index', '', '插件管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('48', 'Admin', 'admin_url', 'admin/plugin/toggle', '', '插件启用切换', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('49', 'Admin', 'admin_url', 'admin/plugin/setting', '', '插件设置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('50', 'Admin', 'admin_url', 'admin/plugin/setting_post', '', '插件设置提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('51', 'Admin', 'admin_url', 'admin/plugin/install', '', '插件安装', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('52', 'Admin', 'admin_url', 'admin/plugin/uninstall', '', '插件卸载', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('53', 'Admin', 'admin_url', 'admin/slide/default', '', '图片管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('54', 'Admin', 'admin_url', 'admin/slide/index', '', '幻灯片管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('55', 'Admin', 'admin_url', 'admin/slide/listorders', '', '幻灯片排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('56', 'Admin', 'admin_url', 'admin/slide/toggle', '', '幻灯片显示切换', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('57', 'Admin', 'admin_url', 'admin/slide/delete', '', '删除幻灯片', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('58', 'Admin', 'admin_url', 'admin/slide/edit', '', '编辑幻灯片', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('59', 'Admin', 'admin_url', 'admin/slide/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('60', 'Admin', 'admin_url', 'admin/slide/add', '', '添加幻灯片', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('61', 'Admin', 'admin_url', 'admin/slide/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('62', 'Admin', 'admin_url', 'admin/slidecat/index', '', '幻灯片分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('63', 'Admin', 'admin_url', 'admin/slidecat/delete', '', '删除分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('64', 'Admin', 'admin_url', 'admin/slidecat/edit', '', '编辑分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('65', 'Admin', 'admin_url', 'admin/slidecat/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('66', 'Admin', 'admin_url', 'admin/slidecat/add', '', '添加分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('67', 'Admin', 'admin_url', 'admin/slidecat/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('68', 'Admin', 'admin_url', 'admin/ad/index', '', '网站广告', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('69', 'Admin', 'admin_url', 'admin/ad/toggle', '', '广告显示切换', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('70', 'Admin', 'admin_url', 'admin/ad/delete', '', '删除广告', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('71', 'Admin', 'admin_url', 'admin/ad/edit', '', '编辑广告', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('72', 'Admin', 'admin_url', 'admin/ad/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('73', 'Admin', 'admin_url', 'admin/ad/add', '', '添加广告', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('74', 'Admin', 'admin_url', 'admin/ad/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('75', 'Admin', 'admin_url', 'admin/link/index', '', '友情链接', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('76', 'Admin', 'admin_url', 'admin/link/listorders', '', '友情链接排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('77', 'Admin', 'admin_url', 'admin/link/toggle', '', '友链显示切换', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('78', 'Admin', 'admin_url', 'admin/link/delete', '', '删除友情链接', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('79', 'Admin', 'admin_url', 'admin/link/edit', '', '编辑友情链接', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('80', 'Admin', 'admin_url', 'admin/link/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('81', 'Admin', 'admin_url', 'admin/link/add', '', '添加友情链接', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('82', 'Admin', 'admin_url', 'admin/link/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('83', 'Api', 'admin_url', 'api/oauthadmin/setting', '', '第三方登陆', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('84', 'Api', 'admin_url', 'api/oauthadmin/setting_post', '', '提交设置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('85', 'Admin', 'admin_url', 'admin/menu/default', '', '菜单管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('86', 'Admin', 'admin_url', 'admin/navcat/default1', '', '前台菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('87', 'Admin', 'admin_url', 'admin/nav/index', '', '菜单管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('88', 'Admin', 'admin_url', 'admin/nav/listorders', '', '前台导航排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('89', 'Admin', 'admin_url', 'admin/nav/delete', '', '删除菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('90', 'Admin', 'admin_url', 'admin/nav/edit', '', '编辑菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('91', 'Admin', 'admin_url', 'admin/nav/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('92', 'Admin', 'admin_url', 'admin/nav/add', '', '添加菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('93', 'Admin', 'admin_url', 'admin/nav/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('94', 'Admin', 'admin_url', 'admin/navcat/index', '', '菜单分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('95', 'Admin', 'admin_url', 'admin/navcat/delete', '', '删除分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('96', 'Admin', 'admin_url', 'admin/navcat/edit', '', '编辑分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('97', 'Admin', 'admin_url', 'admin/navcat/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('98', 'Admin', 'admin_url', 'admin/navcat/add', '', '添加分类', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('99', 'Admin', 'admin_url', 'admin/navcat/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('100', 'Admin', 'admin_url', 'admin/menu/index', '', '后台菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('101', 'Admin', 'admin_url', 'admin/menu/add', '', '添加菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('102', 'Admin', 'admin_url', 'admin/menu/add_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('103', 'Admin', 'admin_url', 'admin/menu/listorders', '', '后台菜单排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('104', 'Admin', 'admin_url', 'admin/menu/export_menu', '', '菜单备份', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('105', 'Admin', 'admin_url', 'admin/menu/edit', '', '编辑菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('106', 'Admin', 'admin_url', 'admin/menu/edit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('107', 'Admin', 'admin_url', 'admin/menu/delete', '', '删除菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('108', 'Admin', 'admin_url', 'admin/menu/lists', '', '所有菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('109', 'Admin', 'admin_url', 'admin/setting/default', '', '网站设置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('110', 'Admin', 'admin_url', 'admin/setting/userdefault', '', '个人信息', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('111', 'Admin', 'admin_url', 'admin/user/userinfo', '', '修改信息', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('112', 'Admin', 'admin_url', 'admin/user/userinfo_post', '', '修改信息提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('113', 'Admin', 'admin_url', 'admin/setting/password', '', '修改密码', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('114', 'Admin', 'admin_url', 'admin/setting/password_post', '', '提交修改', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('115', 'Admin', 'admin_url', 'admin/setting/site', '', '网站信息', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('116', 'Admin', 'admin_url', 'admin/setting/site_post', '', '提交修改', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('117', 'Admin', 'admin_url', 'admin/route/index', '', '路由列表', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('118', 'Admin', 'admin_url', 'admin/route/add', '', '路由添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('119', 'Admin', 'admin_url', 'admin/route/add_post', '', '路由添加提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('120', 'Admin', 'admin_url', 'admin/route/edit', '', '路由编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('121', 'Admin', 'admin_url', 'admin/route/edit_post', '', '路由编辑提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('122', 'Admin', 'admin_url', 'admin/route/delete', '', '路由删除', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('123', 'Admin', 'admin_url', 'admin/route/ban', '', '路由禁止', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('124', 'Admin', 'admin_url', 'admin/route/open', '', '路由启用', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('125', 'Admin', 'admin_url', 'admin/route/listorders', '', '路由排序', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('126', 'Admin', 'admin_url', 'admin/mailer/default', '', '邮箱配置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('127', 'Admin', 'admin_url', 'admin/mailer/index', '', 'SMTP配置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('128', 'Admin', 'admin_url', 'admin/mailer/index_post', '', '提交配置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('129', 'Admin', 'admin_url', 'admin/mailer/active', '', '注册邮件模板', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('130', 'Admin', 'admin_url', 'admin/mailer/active_post', '', '提交模板', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('131', 'Admin', 'admin_url', 'admin/setting/clearcache', '', '清除缓存', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('132', 'User', 'admin_url', 'user/indexadmin/default', '', '用户管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('133', 'User', 'admin_url', 'user/indexadmin/default1', '', '用户组', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('134', 'User', 'admin_url', 'user/indexadmin/index', '', '本站用户', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('135', 'User', 'admin_url', 'user/indexadmin/ban', '', '拉黑会员', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('136', 'User', 'admin_url', 'user/indexadmin/cancelban', '', '启用会员', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('137', 'User', 'admin_url', 'user/oauthadmin/index', '', '第三方用户', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('138', 'User', 'admin_url', 'user/oauthadmin/delete', '', '第三方用户解绑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('139', 'User', 'admin_url', 'user/indexadmin/default3', '', '管理组', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('140', 'Admin', 'admin_url', 'admin/rbac/index', '', '角色管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('141', 'Admin', 'admin_url', 'admin/rbac/member', '', '成员管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('142', 'Admin', 'admin_url', 'admin/rbac/authorize', '', '权限设置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('143', 'Admin', 'admin_url', 'admin/rbac/authorize_post', '', '提交设置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('144', 'Admin', 'admin_url', 'admin/rbac/roleedit', '', '编辑角色', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('145', 'Admin', 'admin_url', 'admin/rbac/roleedit_post', '', '提交编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('146', 'Admin', 'admin_url', 'admin/rbac/roledelete', '', '删除角色', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('147', 'Admin', 'admin_url', 'admin/rbac/roleadd', '', '添加角色', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('148', 'Admin', 'admin_url', 'admin/rbac/roleadd_post', '', '提交添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('149', 'Admin', 'admin_url', 'admin/user/index', '', '管理员', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('150', 'Admin', 'admin_url', 'admin/user/delete', '', '删除管理员', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('151', 'Admin', 'admin_url', 'admin/user/edit', '', '管理员编辑', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('152', 'Admin', 'admin_url', 'admin/user/edit_post', '', '编辑提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('153', 'Admin', 'admin_url', 'admin/user/add', '', '管理员添加', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('154', 'Admin', 'admin_url', 'admin/user/add_post', '', '添加提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('155', 'Admin', 'admin_url', 'admin/plugin/update', '', '插件更新', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('156', 'Admin', 'admin_url', 'admin/storage/index', '', '文件存储', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('157', 'Admin', 'admin_url', 'admin/storage/setting_post', '', '文件存储设置提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('158', 'Admin', 'admin_url', 'admin/slide/ban', '', '禁用幻灯片', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('159', 'Admin', 'admin_url', 'admin/slide/cancelban', '', '启用幻灯片', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('160', 'Admin', 'admin_url', 'admin/user/ban', '', '禁用管理员', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('161', 'Admin', 'admin_url', 'admin/user/cancelban', '', '启用管理员', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('162', 'Demo', 'admin_url', 'demo/adminindex/index', '', '', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('163', 'Demo', 'admin_url', 'demo/adminindex/last', '', '', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('166', 'Admin', 'admin_url', 'admin/mailer/test', '', '测试邮件', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('167', 'Admin', 'admin_url', 'admin/setting/upload', '', '上传设置', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('168', 'Admin', 'admin_url', 'admin/setting/upload_post', '', '上传设置提交', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('169', 'Portal', 'admin_url', 'portal/adminpost/copy', '', '资讯批量复制', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('170', 'Admin', 'admin_url', 'admin/menu/backup_menu', '', '备份菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('171', 'Admin', 'admin_url', 'admin/menu/export_menu_lang', '', '导出后台菜单多语言包', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('172', 'Admin', 'admin_url', 'admin/menu/restore_menu', '', '还原菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('173', 'Admin', 'admin_url', 'admin/menu/getactions', '', '导入新菜单', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('174', 'Admin', 'admin_url', 'admin/variable/default', '', '变量管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('175', 'Portal', 'admin_url', 'portal/adminmember/index', '', '会员管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('176', 'Portal', 'admin_url', 'portal/admincoach/index', null, '教练管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('177', 'Portal', 'admin_url', 'portal/admincurriculum/index', null, '课程管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('178', 'Portal', 'admin_url', 'portal/adminmall/index', null, '商城管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('179', 'Admin', 'admin_url', 'admin/model/default', null, '模型管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('180', 'Portal', 'admin_url', 'portal/adminterm/index', null, '分类管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('181', 'Admin', 'admin_url', 'admin/variable/index', null, '变量管理', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('182', 'Portal', 'admin_url', 'portal/admincoach/recyclebin', null, '教练回收', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('183', 'Portal', 'admin_url', 'portal/adminmall/recyclebin', null, '商城回收', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('184', 'Portal', 'admin_url', 'portal/adminmember/recyclebin', null, '会员回收', '1', '');
INSERT INTO `hi_auth_rule` VALUES ('185', 'Portal', 'admin_url', 'portal/admincurriculum/recyclebin', null, '课程回收', '1', '');

-- ----------------------------
-- Table structure for `hi_comments`
-- ----------------------------
DROP TABLE IF EXISTS `hi_comments`;
CREATE TABLE `hi_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_common_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `hi_common_action_log`;
CREATE TABLE `hi_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_common_action_log
-- ----------------------------
INSERT INTO `hi_common_action_log` VALUES ('4', '0', 'posts20', 'Portal-Article-do_like', '4', '1515594129', '121.207.10.15');

-- ----------------------------
-- Table structure for `hi_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `hi_guestbook`;
CREATE TABLE `hi_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `company` varchar(150) NOT NULL COMMENT '留言单位',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL COMMENT '留言时间',
  `phone` varchar(20) NOT NULL COMMENT '联系电话',
  `address` varchar(255) NOT NULL COMMENT '联系地址',
  `type` smallint(2) NOT NULL DEFAULT '1' COMMENT '合作项目',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '留言状态，1：正常，0：删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_guestbook
-- ----------------------------
INSERT INTO `hi_guestbook` VALUES ('2', '212', '212@qq.com', '212', '12121', '2018-01-10 23:30:03', '2112', '121', '2', '1');
INSERT INTO `hi_guestbook` VALUES ('3', '我去玩', '111@qq.com', '我去我去', '1212', '2018-01-10 23:34:30', '2121212', '21212', '1', '1');
INSERT INTO `hi_guestbook` VALUES ('4', '21212', '21212@qq.com', '21212', '133232', '2018-01-10 23:35:14', '12121', '2121', '1', '1');
INSERT INTO `hi_guestbook` VALUES ('5', '121', '21212@qq.com', '2121', '212121', '2018-01-10 23:37:01', '2121', '212', '2', '1');
INSERT INTO `hi_guestbook` VALUES ('6', '111', '111@qq.com', '111', '111', '2018-01-10 23:38:32', '111', '111', '1', '1');

-- ----------------------------
-- Table structure for `hi_links`
-- ----------------------------
DROP TABLE IF EXISTS `hi_links`;
CREATE TABLE `hi_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_links
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_menu`
-- ----------------------------
DROP TABLE IF EXISTS `hi_menu`;
CREATE TABLE `hi_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` varchar(30) NOT NULL DEFAULT '' COMMENT '应用名称app',
  `model` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称',
  `data` varchar(50) NOT NULL DEFAULT '' COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_menu
-- ----------------------------
INSERT INTO `hi_menu` VALUES ('1', '0', 'Admin', 'Content', 'default', '', '0', '1', '内容管理', 'th', '', '2');
INSERT INTO `hi_menu` VALUES ('2', '1', 'Api', 'Guestbookadmin', 'index', '', '1', '0', '所有留言', '', '', '5');
INSERT INTO `hi_menu` VALUES ('3', '2', 'Api', 'Guestbookadmin', 'delete', '', '1', '0', '删除网站留言', '', '', '0');
INSERT INTO `hi_menu` VALUES ('4', '1', 'Comment', 'Commentadmin', 'index', '', '1', '0', '评论管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('5', '4', 'Comment', 'Commentadmin', 'delete', '', '1', '0', '删除评论', '', '', '0');
INSERT INTO `hi_menu` VALUES ('6', '4', 'Comment', 'Commentadmin', 'check', '', '1', '0', '评论审核', '', '', '0');
INSERT INTO `hi_menu` VALUES ('7', '1', 'Portal', 'AdminPost', 'index', '', '1', '1', '资讯管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('8', '7', 'Portal', 'AdminPost', 'listorders', '', '1', '0', '资讯排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('9', '7', 'Portal', 'AdminPost', 'top', '', '1', '0', '资讯置顶', '', '', '0');
INSERT INTO `hi_menu` VALUES ('10', '7', 'Portal', 'AdminPost', 'recommend', '', '1', '0', '资讯推荐', '', '', '0');
INSERT INTO `hi_menu` VALUES ('11', '7', 'Portal', 'AdminPost', 'move', '', '1', '0', '批量移动', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('12', '7', 'Portal', 'AdminPost', 'check', '', '1', '0', '资讯审核', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('13', '7', 'Portal', 'AdminPost', 'delete', '', '1', '0', '删除资讯', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('14', '7', 'Portal', 'AdminPost', 'edit', '', '1', '0', '编辑资讯', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('15', '14', 'Portal', 'AdminPost', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('16', '7', 'Portal', 'AdminPost', 'add', '', '1', '0', '添加资讯', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('17', '16', 'Portal', 'AdminPost', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('18', '0', 'Portal', 'AdminTerm', 'default', '', '0', '1', '分类管理', 'delicious', '', '3');
INSERT INTO `hi_menu` VALUES ('19', '18', 'Portal', 'AdminTerm', 'listorders', '', '1', '0', '文章分类排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('20', '18', 'Portal', 'AdminTerm', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('21', '18', 'Portal', 'AdminTerm', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('22', '21', 'Portal', 'AdminTerm', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('23', '18', 'Portal', 'AdminTerm', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('24', '23', 'Portal', 'AdminTerm', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('25', '1', 'Portal', 'AdminPage', 'index', '', '1', '1', '页面管理', '', '', '2');
INSERT INTO `hi_menu` VALUES ('26', '25', 'Portal', 'AdminPage', 'listorders', '', '1', '0', '页面排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('27', '25', 'Portal', 'AdminPage', 'delete', '', '1', '0', '删除页面', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('28', '25', 'Portal', 'AdminPage', 'edit', '', '1', '0', '编辑页面', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('29', '28', 'Portal', 'AdminPage', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('30', '25', 'Portal', 'AdminPage', 'add', '', '1', '0', '添加页面', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('31', '30', 'Portal', 'AdminPage', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('32', '0', 'Admin', 'Recycle', 'default', '', '1', '1', '回收站', 'trash', '', '6');
INSERT INTO `hi_menu` VALUES ('33', '32', 'Portal', 'AdminPost', 'recyclebin', '', '1', '1', '资讯回收', '', '', '0');
INSERT INTO `hi_menu` VALUES ('34', '33', 'Portal', 'AdminPost', 'restore', '', '1', '0', '文章还原', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('35', '33', 'Portal', 'AdminPost', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('36', '32', 'Portal', 'AdminPage', 'recyclebin', '', '1', '1', '页面回收', '', '', '1');
INSERT INTO `hi_menu` VALUES ('37', '36', 'Portal', 'AdminPage', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('38', '36', 'Portal', 'AdminPage', 'restore', '', '1', '0', '页面还原', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('39', '0', 'Admin', 'Extension', 'default', '', '0', '0', '扩展工具', 'cloud', '', '6');
INSERT INTO `hi_menu` VALUES ('40', '0', 'Admin', 'Backup', 'default', '', '1', '1', '备份管理', 'database', '', '5');
INSERT INTO `hi_menu` VALUES ('41', '40', 'Admin', 'Backup', 'restore', '', '1', '1', '数据还原', '', '', '0');
INSERT INTO `hi_menu` VALUES ('42', '40', 'Admin', 'Backup', 'index', '', '1', '1', '数据备份', '', '', '0');
INSERT INTO `hi_menu` VALUES ('43', '42', 'Admin', 'Backup', 'index_post', '', '1', '0', '提交数据备份', '', '', '0');
INSERT INTO `hi_menu` VALUES ('44', '40', 'Admin', 'Backup', 'download', '', '1', '0', '下载备份', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('45', '40', 'Admin', 'Backup', 'del_backup', '', '1', '0', '删除备份', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('46', '40', 'Admin', 'Backup', 'import', '', '1', '0', '数据备份导入', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('188', '192', 'Portal', 'AdminMember', 'index', '', '1', '1', '会员管理', '', '', '1');
INSERT INTO `hi_menu` VALUES ('53', '0', 'Admin', 'Slide', 'default', '', '1', '1', '图片管理', 'image', '', '3');
INSERT INTO `hi_menu` VALUES ('54', '53', 'Admin', 'Slide', 'index', '', '1', '1', '图片管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('55', '54', 'Admin', 'Slide', 'listorders', '', '1', '0', '图片排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('56', '54', 'Admin', 'Slide', 'toggle', '', '1', '0', '图片显示切换', '', '', '0');
INSERT INTO `hi_menu` VALUES ('57', '54', 'Admin', 'Slide', 'delete', '', '1', '0', '删除图片', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('58', '54', 'Admin', 'Slide', 'edit', '', '1', '0', '编辑图片', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('59', '58', 'Admin', 'Slide', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('60', '54', 'Admin', 'Slide', 'add', '', '1', '0', '添加图片', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('61', '60', 'Admin', 'Slide', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('62', '53', 'Admin', 'Slidecat', 'index', '', '1', '1', '图片分类', '', '', '0');
INSERT INTO `hi_menu` VALUES ('63', '62', 'Admin', 'Slidecat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('64', '62', 'Admin', 'Slidecat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('65', '64', 'Admin', 'Slidecat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('66', '62', 'Admin', 'Slidecat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('67', '66', 'Admin', 'Slidecat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('68', '39', 'Admin', 'Ad', 'index', '', '1', '0', '网站广告', '', '', '2');
INSERT INTO `hi_menu` VALUES ('69', '68', 'Admin', 'Ad', 'toggle', '', '1', '0', '广告显示切换', '', '', '0');
INSERT INTO `hi_menu` VALUES ('70', '68', 'Admin', 'Ad', 'delete', '', '1', '0', '删除广告', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('71', '68', 'Admin', 'Ad', 'edit', '', '1', '0', '编辑广告', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('72', '71', 'Admin', 'Ad', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('73', '68', 'Admin', 'Ad', 'add', '', '1', '0', '添加广告', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('74', '73', 'Admin', 'Ad', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('75', '39', 'Admin', 'Link', 'index', '', '0', '0', '友情链接', '', '', '3');
INSERT INTO `hi_menu` VALUES ('76', '75', 'Admin', 'Link', 'listorders', '', '1', '0', '友情链接排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('77', '75', 'Admin', 'Link', 'toggle', '', '1', '0', '友链显示切换', '', '', '0');
INSERT INTO `hi_menu` VALUES ('78', '75', 'Admin', 'Link', 'delete', '', '1', '0', '删除友情链接', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('79', '75', 'Admin', 'Link', 'edit', '', '1', '0', '编辑友情链接', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('80', '79', 'Admin', 'Link', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('81', '75', 'Admin', 'Link', 'add', '', '1', '0', '添加友情链接', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('82', '81', 'Admin', 'Link', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('85', '0', 'Admin', 'Menu', 'default', '', '1', '0', '菜单管理', 'list', '', '1');
INSERT INTO `hi_menu` VALUES ('86', '85', 'Admin', 'Navcat', 'default1', '', '1', '0', '前台菜单', '', '', '0');
INSERT INTO `hi_menu` VALUES ('87', '86', 'Admin', 'Nav', 'index', '', '1', '0', '菜单管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('88', '87', 'Admin', 'Nav', 'listorders', '', '1', '0', '前台导航排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('89', '87', 'Admin', 'Nav', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('90', '87', 'Admin', 'Nav', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('91', '90', 'Admin', 'Nav', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('92', '87', 'Admin', 'Nav', 'add', '', '1', '0', '添加菜单', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('93', '92', 'Admin', 'Nav', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('94', '86', 'Admin', 'Navcat', 'index', '', '1', '1', '菜单分类', '', '', '0');
INSERT INTO `hi_menu` VALUES ('95', '94', 'Admin', 'Navcat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('96', '94', 'Admin', 'Navcat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('97', '96', 'Admin', 'Navcat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('98', '94', 'Admin', 'Navcat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('99', '98', 'Admin', 'Navcat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('100', '85', 'Admin', 'Menu', 'index', '', '1', '1', '后台菜单', '', '', '0');
INSERT INTO `hi_menu` VALUES ('101', '100', 'Admin', 'Menu', 'add', '', '1', '0', '添加菜单', '', '', '0');
INSERT INTO `hi_menu` VALUES ('102', '101', 'Admin', 'Menu', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('103', '100', 'Admin', 'Menu', 'listorders', '', '1', '0', '后台菜单排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('104', '100', 'Admin', 'Menu', 'export_menu', '', '1', '0', '菜单备份', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('105', '100', 'Admin', 'Menu', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('106', '105', 'Admin', 'Menu', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('107', '100', 'Admin', 'Menu', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('108', '100', 'Admin', 'Menu', 'lists', '', '1', '0', '所有菜单', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('109', '0', 'Admin', 'Setting', 'default', '', '0', '1', '网站设置', 'cogs', '', '0');
INSERT INTO `hi_menu` VALUES ('110', '109', 'Admin', 'Setting', 'userdefault', '', '0', '1', '个人信息', '', '', '0');
INSERT INTO `hi_menu` VALUES ('111', '110', 'Admin', 'User', 'userinfo', '', '1', '1', '修改信息', '', '', '0');
INSERT INTO `hi_menu` VALUES ('112', '111', 'Admin', 'User', 'userinfo_post', '', '1', '0', '修改信息提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('113', '110', 'Admin', 'Setting', 'password', '', '1', '1', '修改密码', '', '', '0');
INSERT INTO `hi_menu` VALUES ('114', '113', 'Admin', 'Setting', 'password_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `hi_menu` VALUES ('115', '109', 'Admin', 'Setting', 'site', '', '1', '1', '网站信息', '', '', '0');
INSERT INTO `hi_menu` VALUES ('116', '115', 'Admin', 'Setting', 'site_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `hi_menu` VALUES ('117', '115', 'Admin', 'Route', 'index', '', '1', '0', '路由列表', '', '', '0');
INSERT INTO `hi_menu` VALUES ('118', '115', 'Admin', 'Route', 'add', '', '1', '0', '路由添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('119', '118', 'Admin', 'Route', 'add_post', '', '1', '0', '路由添加提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('120', '115', 'Admin', 'Route', 'edit', '', '1', '0', '路由编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('121', '120', 'Admin', 'Route', 'edit_post', '', '1', '0', '路由编辑提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('122', '115', 'Admin', 'Route', 'delete', '', '1', '0', '路由删除', '', '', '0');
INSERT INTO `hi_menu` VALUES ('123', '115', 'Admin', 'Route', 'ban', '', '1', '0', '路由禁止', '', '', '0');
INSERT INTO `hi_menu` VALUES ('124', '115', 'Admin', 'Route', 'open', '', '1', '0', '路由启用', '', '', '0');
INSERT INTO `hi_menu` VALUES ('125', '115', 'Admin', 'Route', 'listorders', '', '1', '0', '路由排序', '', '', '0');
INSERT INTO `hi_menu` VALUES ('126', '109', 'Admin', 'Mailer', 'default', '', '1', '0', '邮箱配置', '', '', '0');
INSERT INTO `hi_menu` VALUES ('127', '126', 'Admin', 'Mailer', 'index', '', '1', '1', 'SMTP配置', '', '', '0');
INSERT INTO `hi_menu` VALUES ('128', '127', 'Admin', 'Mailer', 'index_post', '', '1', '0', '提交配置', '', '', '0');
INSERT INTO `hi_menu` VALUES ('129', '126', 'Admin', 'Mailer', 'active', '', '1', '1', '注册邮件模板', '', '', '0');
INSERT INTO `hi_menu` VALUES ('130', '129', 'Admin', 'Mailer', 'active_post', '', '1', '0', '提交模板', '', '', '0');
INSERT INTO `hi_menu` VALUES ('131', '109', 'Admin', 'Setting', 'clearcache', '', '1', '1', '清除缓存', '', '', '1');
INSERT INTO `hi_menu` VALUES ('132', '0', 'User', 'Indexadmin', 'default', '', '1', '0', '用户管理', 'group', '', '4');
INSERT INTO `hi_menu` VALUES ('139', '132', 'User', 'Indexadmin', 'default3', '', '1', '1', '管理组', '', '', '0');
INSERT INTO `hi_menu` VALUES ('140', '139', 'Admin', 'Rbac', 'index', '', '1', '1', '角色管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('141', '140', 'Admin', 'Rbac', 'member', '', '1', '0', '成员管理', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('142', '140', 'Admin', 'Rbac', 'authorize', '', '1', '0', '权限设置', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('143', '142', 'Admin', 'Rbac', 'authorize_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `hi_menu` VALUES ('144', '140', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '编辑角色', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('145', '144', 'Admin', 'Rbac', 'roleedit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `hi_menu` VALUES ('146', '140', 'Admin', 'Rbac', 'roledelete', '', '1', '1', '删除角色', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('147', '140', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '添加角色', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('148', '147', 'Admin', 'Rbac', 'roleadd_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `hi_menu` VALUES ('149', '139', 'Admin', 'User', 'index', '', '1', '1', '管理员', '', '', '0');
INSERT INTO `hi_menu` VALUES ('150', '149', 'Admin', 'User', 'delete', '', '1', '0', '删除管理员', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('151', '149', 'Admin', 'User', 'edit', '', '1', '0', '管理员编辑', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('152', '151', 'Admin', 'User', 'edit_post', '', '1', '0', '编辑提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('153', '149', 'Admin', 'User', 'add', '', '1', '0', '管理员添加', '', '', '1000');
INSERT INTO `hi_menu` VALUES ('154', '153', 'Admin', 'User', 'add_post', '', '1', '0', '添加提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('156', '109', 'Admin', 'Storage', 'index', '', '1', '0', '文件存储', '', '', '0');
INSERT INTO `hi_menu` VALUES ('157', '156', 'Admin', 'Storage', 'setting_post', '', '1', '0', '文件存储设置提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('158', '54', 'Admin', 'Slide', 'ban', '', '1', '0', '禁用幻灯片', '', '', '0');
INSERT INTO `hi_menu` VALUES ('159', '54', 'Admin', 'Slide', 'cancelban', '', '1', '0', '启用幻灯片', '', '', '0');
INSERT INTO `hi_menu` VALUES ('160', '149', 'Admin', 'User', 'ban', '', '1', '0', '禁用管理员', '', '', '0');
INSERT INTO `hi_menu` VALUES ('161', '149', 'Admin', 'User', 'cancelban', '', '1', '0', '启用管理员', '', '', '0');
INSERT INTO `hi_menu` VALUES ('166', '127', 'Admin', 'Mailer', 'test', '', '1', '0', '测试邮件', '', '', '0');
INSERT INTO `hi_menu` VALUES ('167', '109', 'Admin', 'Setting', 'upload', '', '1', '1', '上传设置', '', '', '0');
INSERT INTO `hi_menu` VALUES ('168', '167', 'Admin', 'Setting', 'upload_post', '', '1', '0', '上传设置提交', '', '', '0');
INSERT INTO `hi_menu` VALUES ('169', '7', 'Portal', 'AdminPost', 'copy', '', '1', '0', '资讯批量复制', '', '', '0');
INSERT INTO `hi_menu` VALUES ('174', '100', 'Admin', 'Menu', 'backup_menu', '', '1', '0', '备份菜单', '', '', '0');
INSERT INTO `hi_menu` VALUES ('175', '100', 'Admin', 'Menu', 'export_menu_lang', '', '1', '0', '导出后台菜单多语言包', '', '', '0');
INSERT INTO `hi_menu` VALUES ('176', '100', 'Admin', 'Menu', 'restore_menu', '', '1', '0', '还原菜单', '', '', '0');
INSERT INTO `hi_menu` VALUES ('177', '100', 'Admin', 'Menu', 'getactions', '', '1', '0', '导入新菜单', '', '', '0');
INSERT INTO `hi_menu` VALUES ('187', '0', 'Admin', 'Variable', 'default', '', '1', '1', '变量管理', 'refresh', '', '4');
INSERT INTO `hi_menu` VALUES ('189', '192', 'Portal', 'AdminCoach', 'index', '', '1', '1', '教练管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('190', '192', 'Portal', 'AdminCurriculum', 'index', '', '1', '1', '课程管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('191', '192', 'Portal', 'AdminMall', 'index', '', '1', '1', '商城管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('192', '0', 'Admin', 'Model', 'default', '', '1', '1', '模型管理', 'bookmark', '', '0');
INSERT INTO `hi_menu` VALUES ('193', '18', 'Portal', 'AdminTerm', 'index', '', '1', '1', '分类管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('194', '187', 'Admin', 'Variable', 'index', '', '1', '1', '变量管理', '', '', '0');
INSERT INTO `hi_menu` VALUES ('195', '32', 'Portal', 'AdminCoach', 'recyclebin', '', '1', '1', '教练回收', '', '', '0');
INSERT INTO `hi_menu` VALUES ('196', '32', 'Portal', 'AdminMall', 'recyclebin', '', '1', '1', '商城回收', '', '', '0');
INSERT INTO `hi_menu` VALUES ('197', '32', 'Portal', 'AdminMember', 'recyclebin', '', '1', '1', '会员回收', '', '', '0');
INSERT INTO `hi_menu` VALUES ('198', '32', 'Portal', 'AdminCurriculum', 'recyclebin', '', '1', '1', '课程回收', '', '', '0');

-- ----------------------------
-- Table structure for `hi_nav`
-- ----------------------------
DROP TABLE IF EXISTS `hi_nav`;
CREATE TABLE `hi_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_nav
-- ----------------------------
INSERT INTO `hi_nav` VALUES ('1', '1', '0', '首页', '', 'home', '', '1', '0', '0-1');
INSERT INTO `hi_nav` VALUES ('2', '1', '0', '课程', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}', '', '1', '0', '0-2');
INSERT INTO `hi_nav` VALUES ('3', '1', '0', '会员', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}', '', '1', '0', '0-3');
INSERT INTO `hi_nav` VALUES ('4', '1', '0', '新闻中心', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}', '', '1', '0', '0-4');
INSERT INTO `hi_nav` VALUES ('5', '1', '0', '商城', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"5\";}}', '', '1', '0', '0-5');
INSERT INTO `hi_nav` VALUES ('9', '2', '0', '订阅资讯', '', 'https://mp.weixin.qq.com/mp/homepage?__biz=MzU5MDI5Nzk4Mg==&hid=5&sn=92eccc205cde9ae3a57b13ee322209ab&scene=18&devicetype=android-23&version=26060135&lang=zh_CN&nettype=WIFI&ascene=7&session_us=gh_1cf15f85889d&wx_header=1', '', '1', '0', '0-9');
INSERT INTO `hi_nav` VALUES ('10', '2', '0', '联系东西', '', 'a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"5\";}}', '', '1', '0', '0-10');
INSERT INTO `hi_nav` VALUES ('11', '1', '2', '教练', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}', '', '1', '0', '0-2-11');
INSERT INTO `hi_nav` VALUES ('12', '1', '2', '课程介绍', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}', '', '1', '0', '0-2-12');
INSERT INTO `hi_nav` VALUES ('13', '1', '2', '价格表', '', 'a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"23\";}}', '', '1', '0', '0-2-13');

-- ----------------------------
-- Table structure for `hi_nav_cat`
-- ----------------------------
DROP TABLE IF EXISTS `hi_nav_cat`;
CREATE TABLE `hi_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_nav_cat
-- ----------------------------
INSERT INTO `hi_nav_cat` VALUES ('1', '主导航', '1', '主导航');
INSERT INTO `hi_nav_cat` VALUES ('2', '底部菜单', '0', '底部菜单');

-- ----------------------------
-- Table structure for `hi_oauth_user`
-- ----------------------------
DROP TABLE IF EXISTS `hi_oauth_user`;
CREATE TABLE `hi_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_options`
-- ----------------------------
DROP TABLE IF EXISTS `hi_options`;
CREATE TABLE `hi_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_options
-- ----------------------------
INSERT INTO `hi_options` VALUES ('1', 'member_email_active', '{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<strong style=\\\"white-space: normal;\\\">---<\\/strong><\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<strong style=\\\"white-space: normal;\\\">---<\\/strong><\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}', '1');
INSERT INTO `hi_options` VALUES ('6', 'site_options', '{\"site_name\":\"HIPRO\",\"site_host\":\"http:\\/\\/www.hiproclub.com\\/\",\"site_logo\":\"admin\\/20180424\\/5adf47a266d0f.png\",\"site_erweima\":\"admin\\/20180426\\/5ae1dafca5966.png\",\"site_admin_url_password\":\"\",\"site_tpl\":\"hipro\",\"mobile_tpl_enabled\":\"1\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\\u95fdICP\\u590717031739\\u53f7\",\"site_admin_email\":\"admin@hiproclub.com\",\"site_tongji\":\"\",\"site_copyright\":\"Copyright \\u00a92018-2019 hipro Corporation, All Rights Reserved\",\"site_seo_title\":\"\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\",\"urlmode\":\"2\",\"html_suffix\":\"html\",\"comment_time_interval\":\"60\"}', '1');
INSERT INTO `hi_options` VALUES ('7', 'cmf_settings', '{\"banned_usernames\":\"\"}', '1');
INSERT INTO `hi_options` VALUES ('8', 'cdn_settings', '{\"cdn_static_root\":\"\"}', '1');

-- ----------------------------
-- Table structure for `hi_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `hi_plugins`;
CREATE TABLE `hi_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_posts`
-- ----------------------------
DROP TABLE IF EXISTS `hi_posts`;
CREATE TABLE `hi_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post发布日期',
  `post_content` longtext COMMENT 'post内容',
  `jingyan` text COMMENT '经验',
  `leixing` text COMMENT '教练类型',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核,3删除',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT '1' COMMENT 'post类型，1文章,2页面',
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_posts
-- ----------------------------
INSERT INTO `hi_posts` VALUES ('1', '1', '关于我们', null, '2018-04-24 22:43:40', '<div class=\"about-container\"><div class=\"about-wrap\"><div class=\"main-tit\"><p>关于我们</p></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180426/5ae1d6461397f.png\" title=\"hh.png\" alt=\"hh.png\"/></div><div class=\"content\"><h2>关于HIPRO</h2><p>除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。</p></div></div><div class=\"about-wrap\"><div class=\"main-tit\"><p>空间</p></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180426/5ae1d6461397f.png\" title=\"hh.png\" alt=\"hh.png\"/></div><div class=\"content\"><h2>有氧运动区</h2><p>除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。</p></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180426/5ae1d6461397f.png\" title=\"hh.png\" alt=\"hh.png\"/></div><div class=\"content\"><h2>固定器械区</h2><p>除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。</p></div></div><div class=\"about-wrap\"><div class=\"main-tit\"><p>设备</p></div><div class=\"content\"><h3>跑步机</h3><p>除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。</p></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180426/5ae1d6461397f.png\" title=\"hh.png\" alt=\"hh.png\"/></div><div class=\"content\"><h3>跑步机</h3><p>除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。除了锻炼课程，他们拥有丰富的经验。</p></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180426/5ae1d6461397f.png\" title=\"hh.png\" alt=\"hh.png\"/></div></div></div>', null, null, '关于我们', '关于我们', '1', '1', '2018-04-24 22:43:29', null, '0', '2', '', '0', '{\"template\":\"page\",\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('2', '1', '联系我们', null, '2018-04-24 22:43:53', '', null, null, '联系我们', '联系我们', '1', '1', '2018-04-24 22:43:43', null, '0', '2', '', '0', '{\"template\":\"contact\",\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('3', '1', '地图导航', null, '2018-04-24 22:44:17', '', null, null, '地图导航', '地图导航', '1', '1', '2018-04-24 22:43:54', null, '0', '2', '', '0', '{\"template\":\"map\",\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('4', '1', '', null, '2018-04-25 15:02:19', '<p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p><br/></p>', '10年健身经验', '顶级瑜伽教练', '李 晓明', '除了锻炼课程，\r\n他们拥有丰富我经验。课程，\r\n他们拥有丰富的经验。', '1', '1', '2018-04-25 15:31:48', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae028500c505.png\"}', '2', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('5', '1', '', null, '2018-04-25 15:38:00', '<p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p><br/></p>', 'dasdsadsad', 'dsdsdas', '李 晓明', '除了锻炼课程，\r\n他们拥有丰富我经验。课程，\r\n他们拥有丰富的经验。', '1', '1', '2018-04-25 15:40:45', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae028500c505.png\"}', '3', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('6', '1', '', null, '2018-04-25 15:38:03', '<p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p><br/></p>', '123', '123', '李 晓明', '除了锻炼课程，\r\n他们拥有丰富我经验。课程，\r\n他们拥有丰富的经验。', '1', '1', '2018-04-25 15:40:36', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae028500c505.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('7', '1', '', null, '2018-04-25 15:40:13', '<p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p><br/></p>', '10年健身经验', '顶级瑜伽教练', '李 晓明', '除了锻炼课程，\r\n他们拥有丰富我经验。课程，\r\n他们拥有丰富的经验。', '1', '1', '2018-04-25 15:40:13', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae028500c505.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('8', '1', '', null, '2018-04-25 15:40:14', '<p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p><br/></p>', '10年健身经验', '顶级瑜伽教练', '李 晓明', '除了锻炼课程，\r\n他们拥有丰富我经验。课程，\r\n他们拥有丰富的经验。', '1', '1', '2018-04-25 15:40:14', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae028500c505.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('11', '1', '', null, '2018-04-25 16:38:57', '', '场内所有设备免费使用（特殊设备需预约）', '拥有此卡可享有20次健身课程', 'PLUS card', '', '1', '1', '2018-04-26 14:18:08', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae03ee6d24ef.png\"}', '1', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('12', '1', '', null, '2018-04-25 16:40:51', '', '场内所有设备免费使用（特殊设备需预约）', '拥有此卡可享有10次健身课程', 'GO card', '', '1', '1', '2018-04-26 14:17:45', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae16f05e1f70.png\"}', '18', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('13', '1', '', null, '2018-04-26 14:18:14', '', '场内所有设备免费使用（特殊设备需预约）', '拥有此卡一年内可享有无数次健身课程', 'KEEP card', '', '1', '1', '2018-04-26 14:19:01', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae16f05e1f70.png\"}', '1', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('10', '1', '', null, '2018-04-25 15:40:53', '<p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p>除了锻炼课程，</p><p>他们拥有丰富我经验。课程，</p><p>他们拥有丰富的经验。</p><p><br/></p>', 'dasdsadsad', 'dsdsdas', '李 晓明', '除了锻炼课程，\r\n他们拥有丰富我经验。课程，\r\n他们拥有丰富的经验。', '1', '1', '2018-04-25 15:40:53', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae028500c505.png\"}', '1', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('14', '1', '', null, '2018-04-26 14:18:14', '', '场内所有设备免费使用（特殊设备需预约）', '拥有此卡一年内可享有无数次次健身课程', 'PRO card', '', '1', '1', '2018-04-26 14:19:32', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180425\\/5ae03ee6d24ef.png\"}', '1', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('15', '1', 'APPLE WATCH', null, '2018-04-26 14:22:35', '', null, null, 'APPLE WATCH', '会员积分满1000元，即可兑换。', '1', '1', '2018-04-26 14:23:25', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae1705a12df4.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('16', '1', 'APPLE WATCH', null, '2018-04-26 14:23:30', '', null, null, 'APPLE WATCH', '会员积分满1000元，即可兑换。', '1', '1', '2018-04-26 14:23:30', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae1705a12df4.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('17', '1', 'APPLE WATCH', null, '2018-04-26 14:23:31', '', null, null, 'APPLE WATCH', '会员积分满1000元，即可兑换。', '1', '1', '2018-04-26 14:23:31', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae1705a12df4.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('18', '1', 'APPLE WATCH', null, '2018-04-26 14:23:32', '', null, null, 'APPLE WATCH', '会员积分满1000元，即可兑换。', '1', '1', '2018-04-26 14:23:32', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae1705a12df4.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('19', '1', '垫上普拉提', null, '2018-04-26 14:39:09', '', null, '肌肉含量低的人群 | 力量太差的人群 | 提高运动表现的人群 | 想增加体重的人群 | 想让身体紧实的女性 ', '垫上普拉提', '它主要是锻炼人体深层的小肌肉群，维持和改善外观正常活动姿势、达到身体平衡、创展躯干和活动能力、强调对核心肌群的控制、加强人脑对肢体及骨骼肌肉组织的神经感应及支配，再配合正确的呼吸方法所进行的一项全身协调运动。', '1', '1', '2018-04-26 14:44:50', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae1755f28167.png\"}', '0', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('20', '1', '垫上普拉提', null, '2018-04-26 14:45:01', '', null, '肌肉含量低的人群 | 力量太差的人群 | 提高运动表现的人群 | 想增加体重的人群 | 想让身体紧实的女性 ', '垫上普拉提', '它主要是锻炼人体深层的小肌肉群，维持和改善外观正常活动姿势、达到身体平衡、创展躯干和活动能力、强调对核心肌群的控制、加强人脑对肢体及骨骼肌肉组织的神经感应及支配，再配合正确的呼吸方法所进行的一项全身协调运动。', '1', '1', '2018-04-26 14:45:01', null, '0', '3', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae1755f28167.png\"}', '1', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('21', '1', '盛大开业', 'HIPRO', '2018-04-26 15:23:47', '<p>MFT综合格斗健身，是一项以武术及现代格斗为工具。将其训练方法融入至大众健身的私教训练项目。</p>', null, null, 'HIPRO / 盛大开业', 'MFT综合格斗健身，是一项以武术及现代格斗为工具。将其训练方法融入至大众健身的私教训练项目。', '1', '1', '2018-04-26 15:25:30', null, '0', '1', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae17ee874718.png\"}', '4', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('22', '1', '盛大开业', 'HIPRO', '2018-04-26 15:25:36', '<p>MFT综合格斗健身，是一项以武术及现代格斗为工具。将其训练方法融入至大众健身的私教训练项目。</p>', null, null, 'HIPRO / 盛大开业', 'MFT综合格斗健身，是一项以武术及现代格斗为工具。将其训练方法融入至大众健身的私教训练项目。', '1', '1', '2018-04-26 15:25:36', null, '0', '1', '', '0', '{\"thumb\":\"portal\\/20180426\\/5ae17ee874718.png\"}', '4', '0', '0', '0');
INSERT INTO `hi_posts` VALUES ('23', '1', '价格表', null, '2018-04-27 19:59:53', '<div class=\"price-container\"><div class=\"price-wrap\"><div class=\"main-tit\"><p>价格表</p></div><div class=\"img-box\"><ul class=\" list-paddingleft-2\"><li><p><img src=\"/data/upload/ueditor/20180427/5ae3374d00d80.png\" title=\"1.png\" alt=\"1.png\"/></p></li><li><p><img src=\"/data/upload/ueditor/20180427/5ae3374d00d80.png\" title=\"1.png\" alt=\"1.png\"/></p></li></ul></div><div class=\"content\"><h2>常规课程</h2><div class=\"closes\">&amp;times;</div><p>瘦身课程 / 增肌课程</p><div class=\"kc-list\"><ul class=\" list-paddingleft-2\"><li><p>单次体验</p><p><strong><span style=\"text-decoration:line-through;\">￥</span>500</strong><em>/</em>节</p></li><li><p>一次性购课1-24节</p><p><strong><span style=\"text-decoration:line-through;\">￥</span>400</strong><em>/</em>节</p></li><li><p>一次性购课24节以上</p><p><strong><span style=\"text-decoration:line-through;\">￥</span>350</strong><em>/</em>节</p></li></ul></div></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180427/5ae3377e8b979.png\" title=\"2.png\" alt=\"2.png\"/></div><div class=\"img-box\"><img src=\"/data/upload/ueditor/20180427/5ae3377e8b979.png\" title=\"2.png\" alt=\"2.png\"/></div><div class=\"content\"><h2>特色课程</h2><div class=\"closes\">&amp;times;</div><p>垫上普拉提 / 全身伸展课程 / MFT综合格斗健身 / 运动康复课程</p><div class=\"kc-list\"><ul class=\" list-paddingleft-2\"><li><p>单次体验门市价</p><p><strong><span style=\"text-decoration:line-through;\">￥</span>600</strong><em>/</em>节</p></li><li><p>一次性购课1-24节</p><p><strong><span style=\"text-decoration:line-through;\">￥</span>450</strong><em>/</em>节</p></li><li><p>一次性购课24节以上</p><p><strong><span style=\"text-decoration:line-through;\">￥</span>400</strong><em>/</em>节</p></li></ul></div></div><div class=\"p-foot\"><h3 class=\"tips\">TIPS</h3><p>为保证私教质量，每位客户限购50节，仅限50席位。</p><p>以上报价仅适用于试运营阶段尝鲜体验，正式报价以HIPRO官方调整为主。</p></div></div></div>', null, null, '价格表', '价格表', '1', '1', '2018-04-27 19:59:12', null, '0', '2', '', '0', '{\"template\":\"page\",\"thumb\":\"\"}', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `hi_role`
-- ----------------------------
DROP TABLE IF EXISTS `hi_role`;
CREATE TABLE `hi_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_role
-- ----------------------------
INSERT INTO `hi_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');

-- ----------------------------
-- Table structure for `hi_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `hi_role_user`;
CREATE TABLE `hi_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_route`
-- ----------------------------
DROP TABLE IF EXISTS `hi_route`;
CREATE TABLE `hi_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_route
-- ----------------------------
INSERT INTO `hi_route` VALUES ('1', 'portal/list/index?id=4', 'member', '0', '1');
INSERT INTO `hi_route` VALUES ('2', 'portal/list/index?id=5', 'mall', '0', '1');
INSERT INTO `hi_route` VALUES ('3', 'portal/list/index?id=3', 'curriculum', '0', '1');
INSERT INTO `hi_route` VALUES ('4', 'portal/list/index?id=6', 'coach', '0', '1');
INSERT INTO `hi_route` VALUES ('5', 'portal/list/index?id=2', 'news', '0', '1');
INSERT INTO `hi_route` VALUES ('6', 'portal/article/index', 'detail/:id\\d', '0', '1');
INSERT INTO `hi_route` VALUES ('7', 'portal/list/index', 'list/:id\\d', '0', '1');
INSERT INTO `hi_route` VALUES ('8', 'portal/page/index?id=1', 'about', '0', '1');
INSERT INTO `hi_route` VALUES ('9', 'portal/page/index?id=2', 'contact', '0', '1');
INSERT INTO `hi_route` VALUES ('10', 'portal/page/index?id=3', 'map', '0', '1');

-- ----------------------------
-- Table structure for `hi_slide`
-- ----------------------------
DROP TABLE IF EXISTS `hi_slide`;
CREATE TABLE `hi_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `slide_content` text COMMENT '幻灯片内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_slide
-- ----------------------------
INSERT INTO `hi_slide` VALUES ('1', '1', '手机端首页轮播图1', 'admin/20180428/5ae4881f69014.jpg', '', '', '', '1', '0');
INSERT INTO `hi_slide` VALUES ('3', '3', '会员', 'admin/20180423/5addd8a1880ff.png', './index.php?g=portal&amp;m=list&amp;a=index&amp;id=4', '', '', '1', '0');
INSERT INTO `hi_slide` VALUES ('4', '3', '课程', 'admin/20180423/5addd8b729daf.png', './index.php?g=portal&amp;m=list&amp;a=index&amp;id=5', '', '', '1', '0');
INSERT INTO `hi_slide` VALUES ('5', '4', 'PC端首页轮播图1', 'admin/20180426/5ae1e29f9a434.png', '', '', '', '1', '0');

-- ----------------------------
-- Table structure for `hi_slide_cat`
-- ----------------------------
DROP TABLE IF EXISTS `hi_slide_cat`;
CREATE TABLE `hi_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_slide_cat
-- ----------------------------
INSERT INTO `hi_slide_cat` VALUES ('1', '首页banner轮播图', 'index_ads', '首页banner轮播图', '1');
INSERT INTO `hi_slide_cat` VALUES ('3', '首页分类主图列表', 'index_category_list', '首页分类主图列表', '1');
INSERT INTO `hi_slide_cat` VALUES ('4', 'PC端首页轮播图', 'pc_index_slide', '', '1');

-- ----------------------------
-- Table structure for `hi_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `hi_term_relationships`;
CREATE TABLE `hi_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_term_relationships
-- ----------------------------
INSERT INTO `hi_term_relationships` VALUES ('1', '4', '6', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('2', '5', '6', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('3', '6', '6', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('4', '7', '6', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('5', '8', '6', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('8', '11', '4', '1', '1');
INSERT INTO `hi_term_relationships` VALUES ('7', '10', '6', '1', '1');
INSERT INTO `hi_term_relationships` VALUES ('9', '12', '4', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('10', '13', '4', '2', '1');
INSERT INTO `hi_term_relationships` VALUES ('11', '14', '4', '3', '1');
INSERT INTO `hi_term_relationships` VALUES ('12', '15', '5', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('13', '16', '5', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('14', '17', '5', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('15', '18', '5', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('16', '19', '3', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('17', '20', '3', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('18', '21', '2', '0', '1');
INSERT INTO `hi_term_relationships` VALUES ('19', '22', '2', '0', '1');

-- ----------------------------
-- Table structure for `hi_terms`
-- ----------------------------
DROP TABLE IF EXISTS `hi_terms`;
CREATE TABLE `hi_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_terms
-- ----------------------------
INSERT INTO `hi_terms` VALUES ('2', '新闻中心', '', 'article', '新闻中心', '0', '0', '0-2', '新闻中心', '新闻中心', '新闻中心', 'newslist', 'detail', '0', '1');
INSERT INTO `hi_terms` VALUES ('3', '课程', '', 'works', '课程', '0', '0', '0-3', '课程', '课程', '课程', 'curriculum', 'detail', '0', '1');
INSERT INTO `hi_terms` VALUES ('4', '会员', '', 'works', '课程', '0', '0', '0-4', '会员', '会员', '会员', 'member', 'detail', '0', '1');
INSERT INTO `hi_terms` VALUES ('5', '商城', '', 'works', '商城', '0', '0', '0-5', '商城', '商城', '商城', 'mall', 'detail', '0', '1');
INSERT INTO `hi_terms` VALUES ('6', '教练', '', 'works', '教练', '0', '0', '0-6', '教练', '教练', '教练', 'coach', 'detail', '0', '1');

-- ----------------------------
-- Table structure for `hi_user_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `hi_user_favorites`;
CREATE TABLE `hi_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_user_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `hi_users`
-- ----------------------------
DROP TABLE IF EXISTS `hi_users`;
CREATE TABLE `hi_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT '2000-01-01' COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_users
-- ----------------------------
INSERT INTO `hi_users` VALUES ('1', 'admin', '###e5830b5cf8a5cd379ae42f87faa6b2f4', 'admin', 'admin@qq.com', 'www.hiproclub.com', '', '0', '2000-01-01', '', '120.33.163.241', '2018-04-28 22:29:26', '2018-01-07 09:42:27', '', '1', '0', '1', '0', '');

-- ----------------------------
-- Table structure for `hi_variable`
-- ----------------------------
DROP TABLE IF EXISTS `hi_variable`;
CREATE TABLE `hi_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '变量ID',
  `variableName` varchar(255) NOT NULL COMMENT '变量名',
  `variableValue` varchar(255) DEFAULT NULL COMMENT '变量值',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `variableName` (`variableName`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hi_variable
-- ----------------------------
INSERT INTO `hi_variable` VALUES ('6', 'address', '福建省福州市台江区群众路116号世茂国际中心56层5602', '公司地址', '0');
INSERT INTO `hi_variable` VALUES ('7', 'tell', '15806000088', '联系电话', '0');
INSERT INTO `hi_variable` VALUES ('8', 'contactName', '林女士', '联系人', '0');
INSERT INTO `hi_variable` VALUES ('9', 'qq', '604749526', 'QQ号', '0');
INSERT INTO `hi_variable` VALUES ('10', 'email', 'hipro@126.com', '电子邮箱', '0');
