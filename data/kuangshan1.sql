/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : kuangshan1

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 29/11/2024 18:17:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cmf_admin_api
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_api`;
CREATE TABLE `cmf_admin_api`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父级ID',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '类型;1:纯API;2:父级节点',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '访问地址;1.界面路由,如:/users;2.API的路由,如:GET|admin/users/:id;',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `tags` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'API标签列表，用于分组，以英文逗号分隔',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `url`(`url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台API列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_admin_api
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `controller`(`controller`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES (1, 0, 0, 0, 20, 'admin', 'Plugin', 'default', '', '应用中心', 'cloud', '应用中心');
INSERT INTO `cmf_admin_menu` VALUES (2, 1, 1, 0, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES (3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES (4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES (5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES (6, 0, 0, 0, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES (7, 6, 1, 0, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES (8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES (9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES (11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES (13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES (14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES (15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES (16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES (17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES (18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES (19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES (20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES (21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES (22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES (23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES (24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES (25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES (27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES (29, 6, 1, 0, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES (30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES (31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES (33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES (35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件管理', '', '插件管理');
INSERT INTO `cmf_admin_menu` VALUES (43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES (44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES (45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES (46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES (47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES (48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES (49, 110, 0, 0, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES (50, 110, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES (51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES (52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES (53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES (54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES (55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES (56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES (57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES (58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES (59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES (60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES (61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES (62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES (63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES (64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES (65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES (67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES (68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES (69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES (70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES (71, 0, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', 'cog', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES (72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES (73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES (74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES (75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES (76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES (77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES (78, 0, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', 'photo', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES (79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES (85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES (86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES (87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES (88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES (90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES (91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES (92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES (93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES (94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES (95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES (96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES (97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES (98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES (99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES (100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES (103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES (104, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES (105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES (107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES (109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `cmf_admin_menu` VALUES (110, 0, 0, 0, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES (111, 110, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES (112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES (113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES (114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES (115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES (117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES (118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES (119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES (120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES (121, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES (122, 121, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES (123, 110, 0, 0, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES (124, 110, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES (125, 124, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES (126, 124, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES (127, 110, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES (128, 127, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES (129, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES (130, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES (131, 129, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES (132, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES (162, 6, 1, 0, 50, 'admin', 'Api', 'import', '', '后台API导入', '', '后台API导入');
INSERT INTO `cmf_admin_menu` VALUES (163, 1, 1, 1, 10000, 'admin', 'App', 'index', '', '应用管理', '', '应用管理');
INSERT INTO `cmf_admin_menu` VALUES (164, 163, 2, 0, 10000, 'admin', 'App', 'install', '', '应用安装', '', '应用安装');
INSERT INTO `cmf_admin_menu` VALUES (165, 163, 2, 0, 10000, 'admin', 'App', 'update', '', '应用更新', '', '应用更新');
INSERT INTO `cmf_admin_menu` VALUES (166, 163, 1, 0, 10000, 'admin', 'App', 'uninstall', '', '卸载应用', '', '卸载应用');
INSERT INTO `cmf_admin_menu` VALUES (167, 163, 2, 0, 10000, 'admin', 'App', 'uninstallPost', '', '卸载应用提交', '', '卸载应用提交');
INSERT INTO `cmf_admin_menu` VALUES (168, 6, 1, 0, 50, 'admin', 'Dev', 'index', '', '开发面板', '', '开发面板');
INSERT INTO `cmf_admin_menu` VALUES (169, 42, 1, 0, 10000, 'admin', 'Plugin', 'hooks', '', '插件钩子', '', '插件钩子');
INSERT INTO `cmf_admin_menu` VALUES (170, 50, 1, 0, 10000, 'admin', 'Rbac', 'apiAuthorize', '', '设置角色后台API权限', '', '设置角色后台API权限');
INSERT INTO `cmf_admin_menu` VALUES (171, 50, 2, 0, 10000, 'admin', 'Rbac', 'apiAuthorizePost', '', '设置角色后台API权限提交', '', '设置角色后台API权限提交');
INSERT INTO `cmf_admin_menu` VALUES (172, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'clear', '', '清空回收站', '', '一键清空回收站');
INSERT INTO `cmf_admin_menu` VALUES (173, 95, 2, 0, 10000, 'admin', 'Theme', 'widgetsSort', '', '自由模板控件排序', '', '自由模板控件排序');
INSERT INTO `cmf_admin_menu` VALUES (174, 95, 1, 0, 10000, 'admin', 'Theme', 'widgetSetting', '', '模板自由控件设置', '', '模板自由控件设置');
INSERT INTO `cmf_admin_menu` VALUES (175, 95, 2, 0, 10000, 'admin', 'Theme', 'widgetSettingPost', '', '模板自由控件设置提交保存', '', '模板自由控件设置提交保存');
INSERT INTO `cmf_admin_menu` VALUES (176, 6, 1, 0, 10000, 'admin', 'User', 'emailSetting', '', '我的邮箱设置', '', '我的邮箱设置');
INSERT INTO `cmf_admin_menu` VALUES (177, 176, 2, 0, 10000, 'admin', 'User', 'emailSettingPost', '', '我的邮箱设置提交保存', '', '我的邮箱设置提交保存');
INSERT INTO `cmf_admin_menu` VALUES (178, 6, 1, 0, 10000, 'admin', 'User', 'emailSettingTest', '', '我的邮箱设置测试', 'email', '我的邮箱设置测试');
INSERT INTO `cmf_admin_menu` VALUES (179, 1, 1, 1, 10000, 'admin', 'AppStore', 'apps', '', '应用市场', '', '应用市场');
INSERT INTO `cmf_admin_menu` VALUES (180, 1, 1, 0, 10000, 'admin', 'AppStore', 'plugins', '', '插件市场', '', '插件市场');
INSERT INTO `cmf_admin_menu` VALUES (181, 1, 1, 0, 10000, 'admin', 'AppStore', 'themes', '', '模板市场', '', '模板市场');
INSERT INTO `cmf_admin_menu` VALUES (182, 0, 0, 0, 30, 'portal', 'AdminIndex', 'default', '', '文章管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES (183, 182, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES (184, 183, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES (185, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES (186, 183, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES (187, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES (188, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES (189, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES (190, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES (191, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES (192, 183, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES (193, 182, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES (194, 193, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES (195, 193, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES (196, 193, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES (197, 193, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES (198, 193, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES (199, 193, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES (200, 193, 2, 0, 10000, 'portal', 'AdminCategory', 'toggle', '', '文章分类显示隐藏', '', '文章分类显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES (201, 193, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES (202, 0, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', 'telegram', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES (203, 202, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES (204, 202, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES (205, 202, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES (206, 202, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES (207, 202, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES (208, 182, 1, 0, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES (209, 208, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES (210, 208, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES (211, 208, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES (212, 208, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES (213, 0, 1, 1, 10000, 'portal', 'adminProduct', 'default', '', '产品管理', 'cubes', '');
INSERT INTO `cmf_admin_menu` VALUES (214, 213, 1, 1, 10000, 'portal', 'adminProductCategory', 'index', '', '产品分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (215, 213, 1, 1, 10000, 'portal', 'adminProduct', 'index', '', '产品列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (216, 0, 1, 1, 10000, 'admin', 'message', 'index', '', '留言列表', 'envelope', '');
INSERT INTO `cmf_admin_menu` VALUES (217, 213, 1, 1, 10000, 'portal', 'AdminProfession', 'index', '', '行业标签', '', '');
INSERT INTO `cmf_admin_menu` VALUES (218, 0, 1, 1, 10000, 'portal', 'AdminCase', 'default', '', '案例管理', 'briefcase', '');
INSERT INTO `cmf_admin_menu` VALUES (219, 218, 1, 1, 10000, 'portal', 'AdminCaseCategory', 'index', '', '案例分类', '', '');
INSERT INTO `cmf_admin_menu` VALUES (220, 218, 1, 1, 10000, 'portal', 'AdminCase', 'index', '', '案例列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (221, 0, 1, 1, 10000, 'portal', 'AdminVideo', 'index', '', '视频管理', 'file-movie-o', '');
INSERT INTO `cmf_admin_menu` VALUES (224, 0, 1, 1, 10000, 'portal', 'AdminFile', 'index', '', '下载中心', 'file-pdf-o', '');
INSERT INTO `cmf_admin_menu` VALUES (225, 0, 1, 1, 10000, 'portal', 'AdminAbout', 'default', '', '关于我们', 'university', '');
INSERT INTO `cmf_admin_menu` VALUES (226, 225, 1, 1, 10000, 'portal', 'AdminAboutCategory', 'index', '', '分类列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES (227, 225, 1, 1, 10000, 'portal', 'AdminAbout', 'index', '', '文章列表', '', '');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1325 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES (977, 1, 15825042, 1732246823, 1, 0, 'a0a3fd3fbfbf584093fd8e2c4404edc39fae21ec8e4996d3122a1c3777d2b6cd', 'HENAN CRANE.pdf', 'admin/20241122/3eadf00bd291e1fb1484b0ee7db73fd5.pdf', 'a0a3fd3fbfbf584093fd8e2c4404edc3', '1cfb9daba691e12cc3aadd25dee0f1788eb33aa5', 'pdf', NULL);
INSERT INTO `cmf_asset` VALUES (982, 1, 14922, 1732433798, 1, 0, '366240b5a8c418e2184eb9856715cb7edd6a384d2eab03084a7ff75bd8c8a167', '3352185c3ee97c5697b124257a3ebc36.webp', 'admin/20241124/42e6896f43ab02a8b20e05e6fc618ac4.webp', '366240b5a8c418e2184eb9856715cb7e', 'da3e541fbb9579b1d1a52be9e86c9e3a00b95159', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (983, 1, 158456, 1732434364, 1, 0, 'd30cef452814b70db260695459c1d7c4fc85541ba576b300871584e62c933501', 'banner1.webp', 'admin/20241124/d31b72fa8b35c167cbd0f58810f94ef2.webp', 'd30cef452814b70db260695459c1d7c4', 'ec2d450947a1d8a041ab095ad6d0debc36d5f525', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (984, 1, 117938, 1732434380, 1, 0, 'ec049becf6c1de88163d056e5dd33aec83fb2d903a8a49f064f756a5998ce4fc', 'banner2.webp', 'admin/20241124/1c2c38901e2c149fe7a93342472d7484.webp', 'ec049becf6c1de88163d056e5dd33aec', '37cc18f97de63e386b582b0dd4fa80cc0698b7e1', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (985, 1, 147730, 1732434391, 1, 0, '4fe93a7eb28faf2bd3f7f738834fc9e8b54e77d8bba39f1bcc250e70c91497a5', 'banner3.webp', 'admin/20241124/a6a95102abb1eedaa78073efc05465a8.webp', '4fe93a7eb28faf2bd3f7f738834fc9e8', '31f3f4a47118e199412566110e301f804b999009', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (986, 1, 62468, 1732434402, 1, 0, '7d3509c215ac48184f721867189d7bfc933902a14b1380286ce25a87e2904951', 'banner4.webp', 'admin/20241124/56406084c1591448738bb9366421601b.webp', '7d3509c215ac48184f721867189d7bfc', '5a32eb274b16aff99976a13d095aeed0c536029c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (987, 1, 46366, 1732434421, 1, 0, 'fc210c9d569a61717998612803775a7734d534b3e8adc2f68622c11b16c179f3', 'banner5.webp', 'admin/20241124/c2c622ed0d9f63ea43e1573d0729e5d1.webp', 'fc210c9d569a61717998612803775a77', '6d215cc4a13fb3e98d69026bdd2b031e17d39432', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (988, 1, 37098, 1732434432, 1, 0, '3f0940209388b3b6e43112ab3dfb44514c3b188fd3ce077206b99c1ab4710121', 'banner6.webp', 'admin/20241124/e99d9bf1295c04bec15a54468bcdde3c.webp', '3f0940209388b3b6e43112ab3dfb4451', '550af70115916d3e1aef1e6dbbc0156fe412f572', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (989, 1, 6570, 1732434583, 1, 0, '214090401e360dcaa5ca66da64eb59c2aef54f512281c7f8c94e2edcf1536206', 'b8fdf05714c1989eced8b8cca352ff33.webp', 'admin/20241124/43f2d6eeba5b782f466f2e5dc209b43b.webp', '214090401e360dcaa5ca66da64eb59c2', '4a42f1832fb467b5027012a1b9c8b47045668578', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (990, 1, 11246, 1732434606, 1, 0, '982f85e2c21b3e5e9dae515ac650a7113efe6f36cf2f7da77916abaca45829d6', '8d7da5dbd7a77b0f448148c78db1ecfd.webp', 'admin/20241124/563c10b96a4efb71ac849fff7135068e.webp', '982f85e2c21b3e5e9dae515ac650a711', '47786156d638e84893bb10427518ea7cca77f4ef', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (991, 1, 5474, 1732434611, 1, 0, '9a4a89c9b4a81a284cc824d2cd841447e084cca7b93eb4e7c27105632283c1b3', '8c73dd859ca9123e6c0f24b335f41ac5.webp', 'admin/20241124/171af76bfbf9f33051f0c1d9b2153431.webp', '9a4a89c9b4a81a284cc824d2cd841447', '7c07509fe0fbd10e1e616f2c209623a6ef2f3185', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (992, 1, 86324, 1732434616, 1, 0, 'f20db04310a22a5ab53fe45e1c04d6f03831fed2a0e1c1a60f36b12cafa682d4', '4efe5b434a412ed19cac1f5d1058f311.webp', 'admin/20241124/625aaedd40ce9014effe46b05bb9f9aa.webp', 'f20db04310a22a5ab53fe45e1c04d6f0', '28258bed0d616276c355d12815c5dbb225d3074a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (993, 1, 2318, 1732435666, 1, 0, '135758ff7efde589b1cbbeb6e05266a7695e263f123abed604ba958e1b8ecf64', '缩略图.webp', 'portal/20241124/704b7b14d7514c26bdd61829333c555b.webp', '135758ff7efde589b1cbbeb6e05266a7', 'cc41f1bc5ad3bd53523ecb5eac8b4bd28150f7ba', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (994, 1, 41744, 1732435674, 1, 0, 'da08e9d38dbe5103a83df5041a7da8a6443d4a5339fef7cd609a9bb86053a160', '图像 177.webp', 'portal/20241124/60c5e327a7f0a3595e8e8359a4b2e83f.webp', 'da08e9d38dbe5103a83df5041a7da8a6', '131c535aeda06781e6e0a596783aeb540897c677', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (995, 1, 40986, 1732435674, 1, 0, '362259a318a5ed28111a547266e8caf75a261e9ab290868714d0e64f9ac7ee40', '图像 178.webp', 'portal/20241124/261f1e65efbef36a8cc42d5941f6e028.webp', '362259a318a5ed28111a547266e8caf7', '04cb46042964d5547e9648317a28893e5cf3f57f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (996, 1, 20570, 1732435674, 1, 0, '1a6c0c78b04e9c7f0957ebc09b02dfc4dfb9e74ce9ef33b2cacc9a275131131c', '图像 176.webp', 'portal/20241124/0929d4676e571b2c7edeb69462693e16.webp', '1a6c0c78b04e9c7f0957ebc09b02dfc4', '4ee10ecbde91f4d1badee63ce068a09eac939bbb', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (997, 1, 30900, 1732435674, 1, 0, 'a0f6d44d0b895527efc1ac42aed5d70502d21663aaa9ae6a19c4926bf9734fc4', '图像 179.webp', 'portal/20241124/b7f68357bfabca14ce0bbc8f9c73b870.webp', 'a0f6d44d0b895527efc1ac42aed5d705', 'ffb15597d70576641a54faf5ba366bc0ff8a4530', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (998, 1, 27892, 1732435674, 1, 0, '2122beba429f8705229ca1e6c416823048a2dbd9309d58602cb9a8194577d2a7', '图像 180.webp', 'portal/20241124/8fd7eeb800671696199ece9b05c69aca.webp', '2122beba429f8705229ca1e6c4168230', 'f4d1d2f72195b8c9532a8e0c60e4da034e505a2a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (999, 1, 41168, 1732435674, 1, 0, '67b754faa9e17e41de1281365d4a68f14ca109d36db4567a0e042234c497e282', '图像 183.webp', 'portal/20241124/a102d1e34af60cb26ddab092f8113fc7.webp', '67b754faa9e17e41de1281365d4a68f1', '6eb179c536cc9c5e4da8eb8b396d70a4474532e7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1000, 1, 66944, 1732435674, 1, 0, '931fba49ae7403f9e18df7a62d20a97a8d0b3e1e8f1883e304c8f6ee55d9f7ec', '图像 182.webp', 'portal/20241124/3c74c575c1379e311f3e061522c59d74.webp', '931fba49ae7403f9e18df7a62d20a97a', '62c13cc52bbd9a99401a0e193d294db24de2e1a9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1001, 1, 47622, 1732435696, 1, 0, 'ac2e4ed1b2fd5c428960809da9021351325236d00b08ef6a06dfd3bce3477be9', '图像 184.webp', 'portal/20241124/50cd546199f3610117aa29a0b578dc54.webp', 'ac2e4ed1b2fd5c428960809da9021351', '12e66ee8e26b9aa152da47c91e2f312e99550f3e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1002, 1, 33816, 1732435696, 1, 0, '35be997f115c764257b8c002ef7a1a1c42095a3b17bad2f0e90b48a6abf191b4', '图像 185.webp', 'portal/20241124/1fa6d61b7e938cf8308628f653fc300f.webp', '35be997f115c764257b8c002ef7a1a1c', 'b4c6a587ef1657e3d063dbba4e9c5eba29f9085f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1003, 1, 98520, 1732435696, 1, 0, '3e8fa9c5adc0c4c2b028ce48829eaca89e11fd679f2cae04d4e008538f2ac0b7', '图像 337.webp', 'portal/20241124/70366a771fd07f1184d5ae071acc9fcb.webp', '3e8fa9c5adc0c4c2b028ce48829eaca8', 'a83b066566c70f636596cb18b88bad43718c181f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1004, 1, 35742, 1732435696, 1, 0, 'ae7a4c16c891b037aaf05aafaeda657bc956d76b1a6a43e617aeb1161376959c', '图像 335.webp', 'portal/20241124/832db4f5303b128b3b7e8b66fc6cafd1.webp', 'ae7a4c16c891b037aaf05aafaeda657b', '9593dcf17f24e1e8708ebc2f4e0f3b93096c2015', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1005, 1, 5034, 1732435751, 1, 0, '2bc6d388ae9d98928c40107c979006133d870768bf9d2d4694931f25fab882c7', '缩略图.webp', 'portal/20241124/07cbee12facb8a413bb0d4993f71072e.webp', '2bc6d388ae9d98928c40107c97900613', 'd6b7dd70fcea0a7be3c061c90223598e03bbb10f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1006, 1, 43662, 1732435759, 1, 0, 'cc285b39e7f061701694ac4625e99229c97e29b4d9ebdfdb4e631e4185a374e0', '图像 191.webp', 'portal/20241124/1bac5ca48bd87ae37cf070123a11254f.webp', 'cc285b39e7f061701694ac4625e99229', 'e6f7a8136ee66468381d0572fd922b232913386b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1007, 1, 68444, 1732435759, 1, 0, '1335fc9577f3618ab4707345d5122a742603c2aecd7dcce13815916ea35b8342', '图像 216.webp', 'portal/20241124/a12d89594e9ff08263cd4c24cae28381.webp', '1335fc9577f3618ab4707345d5122a74', '8c6e5ae6a2de12bfc13bf5ddc2b8c7309b574546', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1008, 1, 19140, 1732435759, 1, 0, 'd5b80771bb9517463781e402356484f9f386b98b54b51dd122caec1404c6722d', '图像 193.webp', 'portal/20241124/7fbccb9dd254169e958387fc83a3d3a2.webp', 'd5b80771bb9517463781e402356484f9', '4505e0c2eae54e220c714b70c22611727e047ac7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1009, 1, 15560, 1732435759, 1, 0, '9fa925186d5715392106e83d2d3cb4f7cb241a56825566c80d561f9e7921a539', '图像 194.webp', 'portal/20241124/5665db0e5d503ab7b64797f4deffa4c1.webp', '9fa925186d5715392106e83d2d3cb4f7', '3535e28933e13e836c365d034f99b335fba1d723', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1010, 1, 27694, 1732435759, 1, 0, 'f11e80b9f14c30daac98f02c79573830702e555c5f1830415d989613cb398394', '图像 195.webp', 'portal/20241124/e6dc39a0f45897a5f9bc8bd84d20f0f0.webp', 'f11e80b9f14c30daac98f02c79573830', '2bca2216423131dc2c9a23aa41c0a9ea2bbe657c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1011, 1, 49610, 1732435759, 1, 0, 'e69e894ec99ef8c7930cf1a2d485375230e3f71a2a97dc441a9327fa60aa6c01', '图像 196.webp', 'portal/20241124/690822ef0d723e8d29a204e1dcdb96ea.webp', 'e69e894ec99ef8c7930cf1a2d4853752', 'ccee4f48e18b9826bf43a85dace8384af484105f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1012, 1, 34324, 1732435759, 1, 0, '7c91a8159dbd0791a384057a8120680e043a6c13c36867c08a9d333328c4031e', '图像 197.webp', 'portal/20241124/8c874d3ce2f3384a07f29e415da70417.webp', '7c91a8159dbd0791a384057a8120680e', 'fac459e577974943500ad041f349b678924bb5b5', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1013, 1, 69128, 1732435759, 1, 0, '6420875bd20d9906a6d6095af3f4afe5f8e7f8c1ebfc420b1cdc375fed2ed49b', '图像 209.webp', 'portal/20241124/48cdebd051107778c4a60e5caef4da36.webp', '6420875bd20d9906a6d6095af3f4afe5', 'a3ec6c90870e6fd4770bfb06ddffacee73fa1508', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1014, 1, 31980, 1732435772, 1, 0, '0c28a037b9b49d812b20976bd1d1a39e7d6d6a8a5d474a48ecbdeb48eb544e1d', '图像 208.webp', 'portal/20241124/cb10dad1f2f2114770012753c3ec40f2.webp', '0c28a037b9b49d812b20976bd1d1a39e', '9f7ae8d0809354fef9f0e687515838387b98258b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1015, 1, 59314, 1732435772, 1, 0, 'cc46e262a3781aa4e439f77113fc30e264ae38c84bef204a758af34497a014f2', '图像 201.webp', 'portal/20241124/82c44ebf1345e167be7a1709e8fe255a.webp', 'cc46e262a3781aa4e439f77113fc30e2', 'b5e397e5450e3aef4b4bb87e59c0a979a434370a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1016, 1, 49462, 1732435772, 1, 0, 'aef2d9df94e98902f55fcd14d08e0bc9b71ed8fae67cebd6948ba0912addb8ff', '图像 202.webp', 'portal/20241124/1138f5b1eea6d9feea761734f4c8bed1.webp', 'aef2d9df94e98902f55fcd14d08e0bc9', '3d8ebbb0ea3cce2e52e8dd1729e0f8803d27ec3c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1017, 1, 74922, 1732435772, 1, 0, 'f15761aae0d6de50c287e6b36aa48ffca80aab939b3e8b5cc22c601d1d317540', '图像 203.webp', 'portal/20241124/b927b0386096843df45e9e3bb8456de6.webp', 'f15761aae0d6de50c287e6b36aa48ffc', '5ea2021fdcdfb52c229a99e9e90d35d182f430c5', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1018, 1, 2360, 1732436021, 1, 0, 'f1f43380532b70b74ad9e730af8ed7aca015d30629e994c3c4102adb3cf8c745', '缩略图.webp', 'portal/20241124/6d49b031f2f2b761f9480f4899bd4ae9.webp', 'f1f43380532b70b74ad9e730af8ed7ac', '6f8215bdfe435a4160dc1f98c3494301d903900b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1019, 1, 41834, 1732436030, 1, 0, 'ce61e42f714f49b7bd7a31f7f393b94b2a31ef24ed5adee413b8c85b6a3b5606', '图像 207.webp', 'portal/20241124/24e41febca9ae1f7308bc7802597add8.webp', 'ce61e42f714f49b7bd7a31f7f393b94b', '16d9f147d7adf74e6400cb6f1c3d23afd1746562', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1020, 1, 64660, 1732436030, 1, 0, '0fe09471fe596b8e5664ad635b428ebd18e5299340b429b9d40e47fc80506ec2', '图像 210.webp', 'portal/20241124/6aae52f05f894579a60ad4eb494cc2cc.webp', '0fe09471fe596b8e5664ad635b428ebd', '6aafe193bdeba4d7cc1a6bb929e9b4fa173ddacf', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1021, 1, 63464, 1732436030, 1, 0, 'a7213ae5a19294c3eb56ebcb111a4e0da5622642e7c2f433be408d6ac92245b3', '图像 211.webp', 'portal/20241124/3af55e01c72dc3643d456c5faaeaa173.webp', 'a7213ae5a19294c3eb56ebcb111a4e0d', 'c280ac3a69a0ddb1ffa709824c793025cb2c410d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1022, 1, 35714, 1732436030, 1, 0, '1529bc2f4729733b5191de066bf0fbb441ec36dea057090a0f573ce790d1bd53', '图像 212.webp', 'portal/20241124/9a68612d97529a830e2d0982e6b18866.webp', '1529bc2f4729733b5191de066bf0fbb4', 'af7b7bc7ef6460849cc1e41b9cb18669ba0b157c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1023, 1, 33484, 1732436030, 1, 0, 'd23bdb8319f68c9e17e08641066a7a72e4a789c6410201eb435c2eb529da6f09', '图像 213.webp', 'portal/20241124/7a4fd0e0ac748032bd929726186c4865.webp', 'd23bdb8319f68c9e17e08641066a7a72', '356328439b97f5c36bbefa96f7306fb3b662448c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1024, 1, 26086, 1732436030, 1, 0, 'b7e68c0398ebd52db9e8ce7c805cce46bdedf7cd0c7ba85eb6475401c2ba4538', '图像 214.webp', 'portal/20241124/a6355866eb7008b773ca44cf13ea8f13.webp', 'b7e68c0398ebd52db9e8ce7c805cce46', '1e956d7051d56492dc2910c5dabb1007e0669281', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1025, 1, 9646, 1732436039, 1, 0, '8f0b6a82d0204dbdc34a04b0db33a0c1f5f9cbfd0b4e38a0ec66871513efae14', '图像 215.webp', 'portal/20241124/caaf063118db36db74a91f9b0955f1e8.webp', '8f0b6a82d0204dbdc34a04b0db33a0c1', '50fbd66aff9245ae061b8df0f14a46da510ec8f6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1026, 1, 4002, 1732436079, 1, 0, '879a91fc4bd5a4f4870bf838361f4622a46d647edc0cfb6bd04381c6113f7c31', '缩略图.webp', 'portal/20241124/4c0d56b7d76162ac967da40e8dbd9d3e.webp', '879a91fc4bd5a4f4870bf838361f4622', '5d27b8c7c8d50b0b8c2c3a927deac38f9469f0d3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1027, 1, 14092, 1732436086, 1, 0, 'd92f41c0716afea4719270cab65d65fc0e81098670cd22ec501fd51d4b3a6839', '图像 107.webp', 'portal/20241124/2a5f972654117249bc87355323748b3c.webp', 'd92f41c0716afea4719270cab65d65fc', 'fef179dea99033c4b09fd342d1d8bf187c44cd68', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1028, 1, 43766, 1732436086, 1, 0, '7521cb0d4df9873b4abcc3df794765f79bce9fbb2e99ee659e12463dd3f89fea', '图像 109.webp', 'portal/20241124/25357d90da2988f31cd328cdb025689a.webp', '7521cb0d4df9873b4abcc3df794765f7', 'f6d0ab40edbe6d33adfd29127bee25ad7e052158', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1029, 1, 15454, 1732436086, 1, 0, '3d04ca0ad27da22548cd2e71b674e2451068c6033189f39cc3cc9c12ade428fe', '图像 108.webp', 'portal/20241124/3b3a3d679ee6d3c172b672611ee58ef5.webp', '3d04ca0ad27da22548cd2e71b674e245', '6d5eb9ef0e75de81041c51c67705c43cef75b9e6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1030, 1, 6926, 1732436086, 1, 0, '5c1c5e25c0d9434e56365c77cf48c10d89095e22c0efc04524f5479f0d3c65ea', '图像 110.webp', 'portal/20241124/f451c92eab52550290341fc333c052f1.webp', '5c1c5e25c0d9434e56365c77cf48c10d', 'b65f56147ff6e9e935612e786fb0e4768985d52d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1031, 1, 9172, 1732436124, 1, 0, '21c2677526ca4e3dd1a9063e8fc9bc1ec9449fcac7843cd1ed248d4eb53b3e71', '缩略图.webp', 'portal/20241124/4eea75d85a6334d09e7cee2c20bd6b37.webp', '21c2677526ca4e3dd1a9063e8fc9bc1e', 'a3abb4bced95a15becd4d3cc7623fc97ac3f624c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1032, 1, 11016, 1732436136, 1, 0, 'de2b487da1d95eb82507155cc76dd33b60ee5f5b9b5d3ddf2360cdfaaa3962cf', '图像 104.webp', 'portal/20241124/0b73184ecb67c11ffc06825a4966fe33.webp', 'de2b487da1d95eb82507155cc76dd33b', 'ca5a957a1c44cac87876f98fcac897ae1315577c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1033, 1, 14140, 1732436136, 1, 0, 'a5afe46ba9f173ba8e781c18859e0b101b689d0a87ca6f2e9780c0cb4ba15860', '图像 105.webp', 'portal/20241124/4e13595444da8012044d06fb7d3e7b01.webp', 'a5afe46ba9f173ba8e781c18859e0b10', '2d5f0f0cb8978c37df71041af9e29472eff85061', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1034, 1, 42858, 1732436136, 1, 0, 'ea1e7a76cedbf7ebc1375556794ca0b1bf77873e44483b680f908a82b61b0a7e', '图像 106.webp', 'portal/20241124/458b55fde4b7aa1e3e2aa73d6371345a.webp', 'ea1e7a76cedbf7ebc1375556794ca0b1', '26248a609c71117ff42cc5cae5442c0c68d9ebba', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1035, 1, 45752, 1732436136, 1, 0, '1689c21ae462eec2c9e172c75ceb47ced5ce36f9065316b7f04fc179ac46c9ac', '图像 123.webp', 'portal/20241124/3e2daad5626cab89d66f7a0956a5fc40.webp', '1689c21ae462eec2c9e172c75ceb47ce', 'd508a513a092fae496b3eda9d799ee07c8fccd1a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1036, 1, 78436, 1732436136, 1, 0, '5969087d9754091341da33c6f549ad65fd7ddf4bf964c73298786f6d9cbf2a78', '图像 108.webp', 'portal/20241124/8b2f3f9e199dea10707e4ace02137a35.webp', '5969087d9754091341da33c6f549ad65', '467dcdd437985461f12b080a6532a080b2f6f4bd', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1037, 1, 79352, 1732436136, 1, 0, 'c5a0394c937293a929e70225e48a07533050109e5c5aac63d74be677e82a6650', '图像 109.webp', 'portal/20241124/df822097e86c334dcce88304a786dab2.webp', 'c5a0394c937293a929e70225e48a0753', 'a0e0e0f2579b71232589598947ee10d08abf26a7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1038, 1, 14842, 1732436136, 1, 0, '0801a6f6f821507420b91185b984b633f0941fa8a5fc6103b865870753cf8dde', '图像 112.webp', 'portal/20241124/b923448aa438eb755cc3b04e2aebdd4c.webp', '0801a6f6f821507420b91185b984b633', '1a8103320bd8ca211433bbbb56872e439fa5b892', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1039, 1, 41566, 1732436136, 1, 0, 'f15fafddd5137beeded804c1468ccaef495f1d3dca11253e0c1aec98eb03ee67', '图像 113.webp', 'portal/20241124/d2dc14cf0f241236bccf0ed2a29d3985.webp', 'f15fafddd5137beeded804c1468ccaef', 'ae7e419df1837cd15aa5c0bde7d15a6ca4d1a776', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1040, 1, 40372, 1732436144, 1, 0, '25dbfb486558869c6363a9338f23eb01569af7fad916ab566d2cf3d601d3c579', '图像 110.webp', 'portal/20241124/55114f3b2512f202748ae002656c91b7.webp', '25dbfb486558869c6363a9338f23eb01', '83b48125d66f57604b868a09fc6dda2441763fde', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1041, 1, 72172, 1732436144, 1, 0, 'deb0fe2a83c1ee0b780bfdd002702462dcb2e2b132de6caa8212b0215fbc08cf', '图像 111.webp', 'portal/20241124/f32d710f34322a56e3564870b9cadca9.webp', 'deb0fe2a83c1ee0b780bfdd002702462', 'cb6c0917254c6ed157a48bcac5c40e99ffdfcf98', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1042, 1, 4074, 1732436172, 1, 0, '86ec9111af3624a4bb598ff8899712234e063eab1ff109122b0f29e8e252751a', '缩略图.webp', 'portal/20241124/81a5c794d57cdcbb3b548ec08ee1cf9a.webp', '86ec9111af3624a4bb598ff889971223', '9854b9881677b547e24c64df01b8ad383c89fe65', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1043, 1, 57078, 1732436183, 1, 0, '0195807ff12212bae00bed841821a0a6089e37f1ac3fe4272fe7ebbb22b292c6', '图像 166.webp', 'portal/20241124/a8025b85f2764bef3d8eb404c1fb5449.webp', '0195807ff12212bae00bed841821a0a6', 'ea42c93184335e9f9cd0eca94517b55fb7d9dbb4', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1044, 1, 56312, 1732436183, 1, 0, '69960188dbff4ab2eaf8b1876d28c3599cec50488949ea6c8e20d2a174b09708', '图像 167.webp', 'portal/20241124/64d81b499f656ec3a25b93e48c152fa5.webp', '69960188dbff4ab2eaf8b1876d28c359', 'b197ca2534644db0ce563e14f84ab78900ca9e49', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1045, 1, 45668, 1732436183, 1, 0, 'c94c23f4b020e80bd0e640d7d7ea0e4b0e3d9eeda768ffc129f86310c094c3ec', '图像 168.webp', 'portal/20241124/44b069796d7e2b80a48812aeabbe3ca0.webp', 'c94c23f4b020e80bd0e640d7d7ea0e4b', '0691e029ad7fadf61cf3d87cc93abe9f6e093e89', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1046, 1, 51158, 1732436183, 1, 0, 'e9e0fe5aa6b3679e02aaa384e3b476c380d9412c12599b4e668509ee70ac4cef', '图像 170.webp', 'portal/20241124/2853dba1064da33ff494dc9b24a5a77a.webp', 'e9e0fe5aa6b3679e02aaa384e3b476c3', 'e2a0b48ce066e938e8afaf2de2be7c8b0d58c01e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1047, 1, 36170, 1732436183, 1, 0, 'c8b85a7ce304f956726bb508d0677f6212f2a7e1d1f27b54c89b7522521d6088', '图像 171.webp', 'portal/20241124/185adadc3331bbeb08f752637bf7a9d3.webp', 'c8b85a7ce304f956726bb508d0677f62', 'b570578da69c4652dc72b9e6438c26743e7f6d85', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1048, 1, 36128, 1732436183, 1, 0, 'b7461b1a770faf999a2d1cbd8379358d9e06af679ae5418f63ebbf62e2c38d57', '图像 169.webp', 'portal/20241124/e3016f423b3a89145b0b5d5fc857e69f.webp', 'b7461b1a770faf999a2d1cbd8379358d', '3b2f141f262a055e5e6c95f9f4849e1f19304480', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1049, 1, 56304, 1732436190, 1, 0, '5cbc8b55b9be37ee97ead41425d72e0c15c52b34aceed09a0b679cbab0dad3f0', '图像 172.webp', 'portal/20241124/c7d91e78c7cd9d50c4ab1da980f72760.webp', '5cbc8b55b9be37ee97ead41425d72e0c', '0ac2c4cae4aad763e4693aba9b6b1131fed1a427', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1050, 1, 75204, 1732436190, 1, 0, 'cf6feca892448597f93a22989c62af16ae406bacc0ad3b090cae85c515bbd798', '图像 173.webp', 'portal/20241124/10763313528b2add39749a1ae38a8765.webp', 'cf6feca892448597f93a22989c62af16', '077eee3b2ee670e143c0466c30de9399743316ce', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1051, 1, 2910, 1732436211, 1, 0, '18566e0d2210709de14343e280e1f87fc0373d38b2f9b4165df890c87e0286fb', '缩略图.webp', 'portal/20241124/06bd08bea480d7ef37337d2c67eb863e.webp', '18566e0d2210709de14343e280e1f87f', '92ff63421aef2ba0867456dceb1aaa7f92998401', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1052, 1, 43126, 1732436219, 1, 0, 'dab1869242dbf3a6e53d508dabed5e1565b4798fb1d1cea76f766e8cbf8b6db7', '图像 163.webp', 'portal/20241124/dd8c30be3ceca94c0370d16bbe3a11c5.webp', 'dab1869242dbf3a6e53d508dabed5e15', '70b13aa1f047bc0bbed4d7d9ecb1c421fed1e661', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1053, 1, 46604, 1732436219, 1, 0, 'adc29183bc396123f1de3cb240794e1c301037d65b5e870a6461e66835d7a4e4', '图像 161.webp', 'portal/20241124/723cd021f5ece6de88582ac927187e11.webp', 'adc29183bc396123f1de3cb240794e1c', 'ba770a659c45e0ce465fcf1f0e1612a3e05b73a9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1054, 1, 28002, 1732436219, 1, 0, '530d2467655cef70a4dbdb33d70b4a56ee76ad1224119381d04bdf64a69bf6fb', '图像 162.webp', 'portal/20241124/d8e786df15cb9873c0771f07cb01a3f7.webp', '530d2467655cef70a4dbdb33d70b4a56', '15dd0bbdbd2db64b1d833f73773398be4c6cab7c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1055, 1, 39920, 1732436219, 1, 0, '82afd5e10208e4f686986e97cb119c64222c88726ffb69191a9c4227a9d8a210', '图像 164.webp', 'portal/20241124/a322ab8ab52a638548f9a487f794674c.webp', '82afd5e10208e4f686986e97cb119c64', 'c36a72c7c4294608dd64f441aecd0c8164a4305f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1056, 1, 12760, 1732436219, 1, 0, 'a37918a23b25cd85358863b489d79cfe6d3811e13db0bfaeea365c39a9de5dc4', '图像 165.webp', 'portal/20241124/b989741e933a7f9cc9cc223822c400dc.webp', 'a37918a23b25cd85358863b489d79cfe', '2e0c1713bc312e4c14f184970464600f599da67f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1057, 1, 40522, 1732436219, 1, 0, '9419d5e06f64058bc24ca9a2cfa9fb113d1cfb28c517eee2eebb04efae20b00f', '图像 166.webp', 'portal/20241124/a582a5f3f65ff64d43bf146b92a60ede.webp', '9419d5e06f64058bc24ca9a2cfa9fb11', 'bbfff2556c943b5f6a026f26df4244ae5ba8ca8a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1058, 1, 15400, 1732436219, 1, 0, '00f81898a7bfb13f581d0464a526950c18b1655f500d7c008b891426d7ab0f03', '图像 167.webp', 'portal/20241124/c2ca16bb5032ca0b5feb098660bb110e.webp', '00f81898a7bfb13f581d0464a526950c', '9c50b02e9089eea197f4ef9dd0e9319e3758b5d3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1059, 1, 59524, 1732436227, 1, 0, 'd4ff55f70c088b4126399d757f6f1aae56ddcf702f7ead5e2484aad4835a7b04', '图像 168.webp', 'portal/20241124/01541c3ee25d5bdffb75ffb3620678ac.webp', 'd4ff55f70c088b4126399d757f6f1aae', '957e3922f2b5e74a58b4b21af78fb021c0831adf', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1060, 1, 45224, 1732436227, 1, 0, '68d292b6f814b3dc39ee9a8f9cba4ad69d6760ea08a3e0aeb83e9ae8bea81195', '图像 169.webp', 'portal/20241124/024ad45345693432290ff77866a68e77.webp', '68d292b6f814b3dc39ee9a8f9cba4ad6', 'f2ab5741e86d14cbd94f732b50d0845eb95cc374', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1061, 1, 6052, 1732436331, 1, 0, 'a6ffd7d53486bd3330aecc2a0ba5a15e5eb97e95c28bd16410234f8fb35c7b8a', '缩略图.webp', 'portal/20241124/2b47a091f87850787a2eb4b47f7ce7ae.webp', 'a6ffd7d53486bd3330aecc2a0ba5a15e', 'bea62c9c31be7ab5160e6b9ff67247c1cfeb1795', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1062, 1, 47280, 1732436341, 1, 0, '8886481230f3d05ac2b4a05560261510747f3e02cfbce2f99a5a1bb9a9c08a24', '图像 153.webp', 'portal/20241124/a87b73bbe13e4eb593f9607f46a22baa.webp', '8886481230f3d05ac2b4a05560261510', '486b14baa0e09527d16790b044968461d69b914b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1063, 1, 34078, 1732436341, 1, 0, '3badc00e3e743fa252f3f59af5a8f61552b1c61c4b83fdd7ba5389ba2292cbdd', '图像 155.webp', 'portal/20241124/51cbadf8d4f4742309e6abbceab3d526.webp', '3badc00e3e743fa252f3f59af5a8f615', 'a66a309533e0339a1f6c9560e2d441a3c104efcc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1064, 1, 25576, 1732436341, 1, 0, '3ce0cc456d0a756feed443e763dbd0c17770d16ebc6aa45204b349789912ceff', '图像 156.webp', 'portal/20241124/987fed719a437e889cc38960c7d09a72.webp', '3ce0cc456d0a756feed443e763dbd0c1', 'a5699d52d5c58a34aff189ec70fd43ba932c3519', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1065, 1, 35044, 1732436341, 1, 0, '4bb7b30f183f9cfaafb3bfb2d52073a99fbb2fb2d6be6e37823302a99aec3dbb', '图像 157.webp', 'portal/20241124/604de30ef358ca8b378d499955f6592c.webp', '4bb7b30f183f9cfaafb3bfb2d52073a9', '1455ab536f1d344f7d055be09740d4f5797b14b7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1066, 1, 38580, 1732436344, 1, 0, 'b2979667241198cdada6bef0d0261138b7dc8864169cfd4a5ac9cb04b59c174e', '图像 154.webp', 'portal/20241124/03071dac9e65deebde4feba762697f1b.webp', 'b2979667241198cdada6bef0d0261138', '26b7fea097737df8debe7d577f8b162f61a823ef', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1067, 1, 26358, 1732436355, 1, 0, '20f3afe80ce3a9254540c33ce157982a4c2a9ea5574be18cc7c1676674a66dc4', '图像 158.webp', 'portal/20241124/13b41298a97cf7ff4141b682a2afc814.webp', '20f3afe80ce3a9254540c33ce157982a', '5616b47fa992039c57cfe98d8eeaa8d71646b928', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1068, 1, 53856, 1732436355, 1, 0, '3f1bab8b4005b73df8c3f2d7c370ce745b4d4653bcacd0dcfff841e22c212b50', '图像 159.webp', 'portal/20241124/c9a2494da621d47246e0c9797600ce78.webp', '3f1bab8b4005b73df8c3f2d7c370ce74', '6c9d86e3249acf0516ee35fcdc3a797c1a24cc1f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1069, 1, 3518, 1732436376, 1, 0, 'f6b2c2be34ae5a8dc92ae3daef041b08e95b17b643547e82344b27324f62df83', '缩略图.webp', 'portal/20241124/4d737ed661c807fa58ba72c1432908a8.webp', 'f6b2c2be34ae5a8dc92ae3daef041b08', '23bec8502aa3087567af9f2e43a4f19be0dbe605', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1070, 1, 61086, 1732436386, 1, 0, '40aad92247009fa021399da09868ebde27306cb5a563b48b37b87927ed2014a5', '图像 307.webp', 'portal/20241124/489e22300b03694e1fe7119eb5bd1519.webp', '40aad92247009fa021399da09868ebde', 'b4d97d25657d6ed8243038c12c7e61c9be3740a3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1071, 1, 77584, 1732436386, 1, 0, '85ff1230275929183762b27c3addac3916e17ecf902b8d1df8f513ce1a9ce1ea', '图像 138.webp', 'portal/20241124/0ec6ab7e9e8f86272fd9b4cc9eec979e.webp', '85ff1230275929183762b27c3addac39', '8fbdfa059bd65d35bc319e86b16ea085a7c21bb3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1072, 1, 24748, 1732436386, 1, 0, 'e813a02d6acd47fca3dfdb17313ee9e50dbe447277bcad5e7c141fdf9b125324', '图像 151.webp', 'portal/20241124/72ea4397d5dceca48033d63fc6fbc65e.webp', 'e813a02d6acd47fca3dfdb17313ee9e5', 'f77212082038e1b3df6ae525dd9771b9489dd0d0', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1073, 1, 58988, 1732436398, 1, 0, '4662a54abfaed4b229d4d99ddf53f7f5dfa50d3ef9bd91c5665aa2404079f6c1', '图像 145.webp', 'portal/20241124/70a0eede2445c4925e1f7f44aa255bb9.webp', '4662a54abfaed4b229d4d99ddf53f7f5', '4a306fed3c90f34ab831cdfaa9702a89e8d95cc6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1074, 1, 50986, 1732436398, 1, 0, '1622ead98f05925ef68cfd1f08882ec9f7a08e9af052be4bc4fc07570a97b222', '图像 134.webp', 'portal/20241124/6c7eb866090fb6ba8f433c4761739685.webp', '1622ead98f05925ef68cfd1f08882ec9', '9e3d5658e8a95fd51b2764a2dd57273812ea48b0', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1075, 1, 17152, 1732436398, 1, 0, 'dc943d683bc354eeab4d642caa53487c1b0f2bb245e2d3eeceb5339d2185d1dc', '图像 147.webp', 'portal/20241124/198f5280f21b91251515c02b9106043a.webp', 'dc943d683bc354eeab4d642caa53487c', 'bd1e3faef7e47eec2838b1efba41a915bd78283d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1076, 1, 59086, 1732436407, 1, 0, '92c371ba69b75a15de97d204bffcea5cdf2c05b07a35d232e42888c83103c898', '图像 153.webp', 'portal/20241124/6c652a47518d17597c622353a09c91d5.webp', '92c371ba69b75a15de97d204bffcea5c', 'c1befeec5fe77f423cb7ea5f25731c8b69f90c7d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1077, 1, 78604, 1732436407, 1, 0, '355da78b5fb943d24871e076457125e34388c7fa3f19b58a18717f03f22aa16e', '图像 154.webp', 'portal/20241124/080a4d9e94d2290fda49e33082c8ffcd.webp', '355da78b5fb943d24871e076457125e3', 'b9081edbfc29c09e63205e44c6cea6c08954a950', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1078, 1, 7734, 1732436427, 1, 0, 'e2a9117c41cbfce27018faa9690e9ca280ea95c16101fd1a25a2981474f4a777', '缩略图.webp', 'portal/20241124/fd920a0b3e17f294a6bd09c4b2487b03.webp', 'e2a9117c41cbfce27018faa9690e9ca2', 'ed1e2f63b076de2f2f8799a755efcc19c3d936d2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1079, 1, 45942, 1732436437, 1, 0, '7ac5aa3805a8ebeeb1163eff6c1667d7d0e17b39aa855ca1df7b30575129dca0', '图像 135.webp', 'portal/20241124/a86184f903894c6c65bcd669a7a2cabb.webp', '7ac5aa3805a8ebeeb1163eff6c1667d7', '2118ab2ab55664bea99a4f3a8b2476e56a11f1bb', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1080, 1, 112066, 1732436437, 1, 0, 'c1fb8983912b6621d7f56bc411e9f2606c00dacba6067f27b911022cbf718b34', '图像 136.webp', 'portal/20241124/f0304af4e18dad9f324b860f22b37f91.webp', 'c1fb8983912b6621d7f56bc411e9f260', 'fde17cc17946d1fb5bf66c4a7a2cb191f2c21ecd', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1081, 1, 53002, 1732436437, 1, 0, '9003761e71a82873cbcbbf1fe81152dddfbfd36924e49f410fea98dbb1256949', '图像 137.webp', 'portal/20241124/24c7943140c64539cb792a09ae0546f5.webp', '9003761e71a82873cbcbbf1fe81152dd', '5d27c814d7c38dc8e811cffc470206204426691c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1082, 1, 56990, 1732436444, 1, 0, '51cd06a41f3401bc62566eda8f5b422a8eaf64332541753b8bcc77b821adc1fa', '图像 143.webp', 'portal/20241124/dacdbe8ea331ab2f1aeb0f5373177fb5.webp', '51cd06a41f3401bc62566eda8f5b422a', 'c83cc0006ba91104834308835e48ba862bb4b0de', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1083, 1, 36172, 1732436444, 1, 0, '0654ad5bb61f0a88a870031a406b06c05d5fc3c82b79f181d32f74385956d070', '图像 144.webp', 'portal/20241124/47c9f1d34291b435e5f9318b70f6c712.webp', '0654ad5bb61f0a88a870031a406b06c0', 'aa00e4138261b0fbc0a1f561684104b3c9109c03', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1084, 1, 2916, 1732436470, 1, 0, 'f03e7b4585434d4f4ab41911e3add30a38083596f05095e474920645af464b8b', '缩略图.webp', 'portal/20241124/8b975f235cacf9f1999861f43af3852c.webp', 'f03e7b4585434d4f4ab41911e3add30a', '13ff975b029f280e8f2c7b8464e234614e0fa494', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1085, 1, 44142, 1732436477, 1, 0, '536a0d44872e0679433dd6904db579560144b86f773ca2f614505b31e59f4d0f', '图像 118.webp', 'portal/20241124/6d0ee88e06f38a93922c3bc59ea8bb35.webp', '536a0d44872e0679433dd6904db57956', '045f531d0ced8543ae65ad74c07f6425d9045af7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1086, 1, 46570, 1732436477, 1, 0, 'd296859d12babf5354ff7e61a57708b043043dd4eb87e1de4de5ec9caeaf7f27', '图像 119.webp', 'portal/20241124/be6ef2cd43e4459e04bbc41ed5f0f3aa.webp', 'd296859d12babf5354ff7e61a57708b0', 'e861dce07eae0c47208b83a906bf9c70e3ec05e3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1087, 1, 47886, 1732436477, 1, 0, '65ae15f76036092e8d01e1036998840f8f712ca0fc9cf0d9355cc042aa507287', '图像 120.webp', 'portal/20241124/dbbbbe3feaba9f1f06c5a6ac9fa0915f.webp', '65ae15f76036092e8d01e1036998840f', 'fdfbdfdc6d3ac320e2539d8cac760dc1d462e186', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1088, 1, 51008, 1732436477, 1, 0, '5f184439d0fd0e468c8fae4af4d6bee1f477e375a4347410c2ebe2419fbdb42d', '图像 121.webp', 'portal/20241124/3efa65eec2b9b1116efaeb86c35e2e3d.webp', '5f184439d0fd0e468c8fae4af4d6bee1', '053d22922ab92aa515ced7dfb89ea90d3a0d148a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1089, 1, 62574, 1732436477, 1, 0, '0480e7162eae7152531ed51e8e5f80a4170feaa8087fed9667a820e7392d588c', '图像 122.webp', 'portal/20241124/6308bd17aa22e0ba28ead532b7c67b98.webp', '0480e7162eae7152531ed51e8e5f80a4', '6f61fb8942b1c0722a4b76a767a701d0eef63588', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1090, 1, 21264, 1732436485, 1, 0, '7620ab7b1aacb84a2fdbe20ee1f7dc92df9d7a5864dcdf9097f68b48c6807110', '图像 124.webp', 'portal/20241124/8924e67ffd330ef067af85def4155473.webp', '7620ab7b1aacb84a2fdbe20ee1f7dc92', '5648df560e0877591f93c60aaa02ad2a44e511ae', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1091, 1, 116872, 1732436485, 1, 0, '32cbaa907d53256cdf07f58f1db1a5eb04767bf47b9c37a1308363295a0ba035', '图像 126.webp', 'portal/20241124/d672df33058d434298a9505a1f88a7f4.webp', '32cbaa907d53256cdf07f58f1db1a5eb', '6e38671a8b774aa937ea8c35a3b6fc91428a6496', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1092, 1, 11674, 1732436611, 1, 0, '35322deec90a67872a82b874eeac6d88baacc334c491b91c12c5c22723bef6fe', '缩略图.webp', 'portal/20241124/96961845003f5cb8f29014ce6b9ea7ca.webp', '35322deec90a67872a82b874eeac6d88', '725112c12e96f2d4e8954f6f8e5239d9ac677e0d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1093, 1, 52650, 1732436618, 1, 0, '479853ab7e2006ff09e202cd81d7031eee980cfabf90b19c4bddf48e9c1af4e7', '图像 114.webp', 'portal/20241124/0534a9e2041388007a559f5e0ab48a44.webp', '479853ab7e2006ff09e202cd81d7031e', 'c03b8b95269ca3d6ce07c1c8fa9e5207067efe4d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1094, 1, 50998, 1732436618, 1, 0, 'a8ab11f0f8347e3293a4c5fcf8b39757f30585c6eeeb58970a7b9ce59365c8aa', '图像 115.webp', 'portal/20241124/4cf2706300efe2055a98554f52ed8cbc.webp', 'a8ab11f0f8347e3293a4c5fcf8b39757', 'f11aaac1ee8a9f217cd8007fb1493ad70595900c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1095, 1, 43258, 1732436618, 1, 0, 'f1d149a0ecfaf64ac653ed36f89d4e3ad3ded9cd1ded2ebe65d66ad838ddfee4', '图像 116.webp', 'portal/20241124/4c7433610fd9d355048b590bbabd628e.webp', 'f1d149a0ecfaf64ac653ed36f89d4e3a', '2bccc24897097272ae8a910046b8e8af18750bb2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1096, 1, 57488, 1732436618, 1, 0, 'fe384a335584664791d82b9f51b1ead9a22a470b0c9ab2fb4107011ec70102fb', '图像 117.webp', 'portal/20241124/c4a0c2427ab0a055d6b29a89ebffd89a.webp', 'fe384a335584664791d82b9f51b1ead9', 'b03f2068474c1d20e4fa5b71d88d7893b5f10bf6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1097, 1, 53876, 1732436618, 1, 0, 'e2e2945a85ac6dcff90776a93131845ae228748fa3e4796a85f82d34b6abb497', '图像 118.webp', 'portal/20241124/e550031d8ca090866542e6e9ab55b71a.webp', 'e2e2945a85ac6dcff90776a93131845a', 'af36f62ecf8af600b4e31e7890af0ef51646407b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1098, 1, 66258, 1732436618, 1, 0, 'c128d93faa4c955c92d3379b3c12c4297d2433368fd2d8e198304bae402aed75', '图像 119.webp', 'portal/20241124/5615031b903832f01451a96bb26e8e6a.webp', 'c128d93faa4c955c92d3379b3c12c429', '901f2f3e7a207d2263b4c636aff24e9594686844', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1099, 1, 32118, 1732436629, 1, 0, '37af28412c3388a145af44e376d85c838b6d8f931e863b90d78a5a22e2f68975', '图像 121.webp', 'portal/20241124/8c587c299833e21aeaf76b905aec4bef.webp', '37af28412c3388a145af44e376d85c83', '9747ee7b0db8363ade013704a781f6f1a3742417', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1100, 1, 64522, 1732436629, 1, 0, 'f34dd0dc02db33e4e1f7b6e94d2715f4562d0f9ee09215df74846cfd19763410', '图像 120.webp', 'portal/20241124/f51da2f0278d62a28f349c7af48e6790.webp', 'f34dd0dc02db33e4e1f7b6e94d2715f4', 'ec6e064b7f257871edafe214bb0d3c9a9fe98dda', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1101, 1, 12316, 1732436763, 1, 0, 'bc1b05018aa63313eba261f5b59df78896c23cb53ca2fea1d7b9c65ef6b317dd', '缩略图.webp', 'portal/20241124/a22e30376aaf82dd0edbd72df11ff794.webp', 'bc1b05018aa63313eba261f5b59df788', '8b4d570620f3920a8f83950ad8ea3ffae14ac625', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1102, 1, 70058, 1732436773, 1, 0, '2aefbfa9d852f6d88b41897d3b1fb2bfc6d35699b614b92bb1660d101615e79b', '图像 108.webp', 'portal/20241124/27dcd159742f2aeefc13ff59e7a5f47b.webp', '2aefbfa9d852f6d88b41897d3b1fb2bf', '900ebcd1aacacabe762ae4c86f05d1087c6d4a78', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1103, 1, 16562, 1732436773, 1, 0, 'c528262a271a35b2cff33ded7019f7de1635435e58504b6974149639a932cc23', '图像 109.webp', 'portal/20241124/d64b8689d062e7518bd5dd4afb99aa4f.webp', 'c528262a271a35b2cff33ded7019f7de', '02d2c466490b5705c1a848cb7fdfc0d946c8a2d7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1104, 1, 60946, 1732436773, 1, 0, 'af8ef41fb2d10eb894586c32b9226102de801fe70f063ccab070e8adbd0aa4f4', '图像 110.webp', 'portal/20241124/a2b9e9f6bd5f9595a6b18eceb3103860.webp', 'af8ef41fb2d10eb894586c32b9226102', 'de768149af3ae89d3f9422c94262af315a7652d5', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1105, 1, 13094, 1732436773, 1, 0, '285641179a65511a127e44eb5d383e00e3be3d8be6478d09076c37a504a2925d', '图像 111.webp', 'portal/20241124/338f4f0e73ebe40d654e24c58a4cfe4f.webp', '285641179a65511a127e44eb5d383e00', '7cfd28b854c8cc098731062e99205288e8f2f8a9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1106, 1, 59180, 1732436773, 1, 0, 'f358b5186aebe00d2b1820ca7e706a939988d01c36623c1845c9c3f34c4656a1', '图像 112.webp', 'portal/20241124/85b751201ac1dadeeb0324408583dac6.webp', 'f358b5186aebe00d2b1820ca7e706a93', 'f1e7ba854f7b6bdaeeef4cc61a97a3bcdfdd171d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1107, 1, 65460, 1732436773, 1, 0, '05c08fd5c7099eebf10f0387ace1022b3d90ae9ded938a7a3a3e337352af38b1', '图像 113.webp', 'portal/20241124/2700c716259d779fd90361200199c76a.webp', '05c08fd5c7099eebf10f0387ace1022b', '08da9acae761757e157edcd2ba1ac21b086428a9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1108, 1, 71642, 1732436787, 1, 0, '00651c5d9322df7064da814b070ef41d3675a350e82f37de451b05a224fbf60d', '图像 120.webp', 'portal/20241124/70867f672a26720289a649289a501efc.webp', '00651c5d9322df7064da814b070ef41d', '53093409620053d024ccfd017eedb14000de6498', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1109, 1, 31286, 1732436789, 1, 0, 'd350e97f3b9c622b65549211b046d72d4d170ba805bd2731f6779c846331fc05', '图像 121.webp', 'portal/20241124/dc858ee3327aff43379563c0d9ec5153.webp', 'd350e97f3b9c622b65549211b046d72d', '96a5455fad40f346f08e0eec78c9facc080e6ee4', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1110, 1, 6522, 1732436843, 1, 0, 'bf7583f829bd02f7d60591fc7e094b0f58719915ba085535421bd3e6c737ab7d', '缩略图.webp', 'portal/20241124/c79b86fc71324a28dfef9c3d41e2c8d9.webp', 'bf7583f829bd02f7d60591fc7e094b0f', '6734700c2ff076f23420d82ce4beda4d832af4fa', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1111, 1, 25630, 1732436856, 1, 0, '273fa21e9534273bc71b8480e49f99e250eb34f52ccbf3a24d6d21cccd51d321', '图像 58.webp', 'portal/20241124/f5029495bf3b13c1ae5081da63d838f6.webp', '273fa21e9534273bc71b8480e49f99e2', '7166241b777dce38ff5d2bf6acb471eca7cbe375', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1112, 1, 54634, 1732436856, 1, 0, '40ff5b657804b47628069e7f4e883c47efa7e22948ee5b080a39793df995884d', '图像 59.webp', 'portal/20241124/17710c2298e823d4d3ba5171e8d2e539.webp', '40ff5b657804b47628069e7f4e883c47', 'b9e7075b3b8a1c5f0ab67a5d6f71cb24fc945b3c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1113, 1, 13150, 1732436856, 1, 0, 'd063b5b1a548c41806a7987f47133d4a3467ba218745c38420559fbae13eea97', '图像 60.webp', 'portal/20241124/f4b7cfc1020864b3539087ba08f553fb.webp', 'd063b5b1a548c41806a7987f47133d4a', 'b4bb75079ab0ea8bbe4525207abed096502565e7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1114, 1, 37138, 1732436856, 1, 0, '1c5146448ad6e20099dd57f722f78d5b732726f52553736280dc4ebd98f9dd50', '图像 61.webp', 'portal/20241124/f77d11b8ed055dca8a3bc0a089065d1a.webp', '1c5146448ad6e20099dd57f722f78d5b', '5ff69e3f5c832574456ea72a51bc8ea9d42c6642', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1115, 1, 47936, 1732436870, 1, 0, 'bec13c3e7d24c2c4d007cbb248cb13239485eec2f81f47710e19a9312a21000e', '图像 62.webp', 'portal/20241124/a8d3ff534473b3ffbcb01dc900055174.webp', 'bec13c3e7d24c2c4d007cbb248cb1323', 'b9e834522072467b23323bc56f9c0ba5b6864040', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1116, 1, 59110, 1732436871, 1, 0, 'fe025da0b807801d01271d3cc09a3cbd2306777f9b9408cc7c395addea534930', '图像 63.webp', 'portal/20241124/6436e6462c53acdd6e3dddbc311e508c.webp', 'fe025da0b807801d01271d3cc09a3cbd', '54e7abb6d84f0065206fc7cd57a809855c55481a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1117, 1, 2538, 1732436894, 1, 0, 'bfeb3a727c7a4fadd96a5c954aba0b71308500b6ec314dc661e8133efe2b91f3', '缩略图.webp', 'portal/20241124/d0fb0862a0b989bda6b6d3d95545f30b.webp', 'bfeb3a727c7a4fadd96a5c954aba0b71', '1d0563795caed3de6fba114e636c177895cb1af4', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1118, 1, 21210, 1732436904, 1, 0, 'fdefb96ef9ca3eb24059ccd07d984c2e6c01079edb16e8cee084594bf4bf0e9a', '图像 93.webp', 'portal/20241124/86b5becb3092076dfa8cf73399314af9.webp', 'fdefb96ef9ca3eb24059ccd07d984c2e', 'b5e69801584885a6f900239f3ce982993923e83e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1119, 1, 45050, 1732436904, 1, 0, '155f7170b95bd981ffb4024b6bf327502a7dd1929ad698fc3954e294f379b2ce', '图像 94.webp', 'portal/20241124/265069dd9f97bafb8c68553a0fefb234.webp', '155f7170b95bd981ffb4024b6bf32750', '877090fc2da345e6e3c91d50081d23612c9d52df', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1120, 1, 64862, 1732436904, 1, 0, 'e7707f123fc5cf4ac76c2c2471c0bf520ec7f30f39c5ced6e624288799b5a166', '图像 95.webp', 'portal/20241124/b1987e8e1de163026704326b7dfac595.webp', 'e7707f123fc5cf4ac76c2c2471c0bf52', '6293ed4ff51536fc339a9f45a16d6307a8e92a74', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1121, 1, 47228, 1732436904, 1, 0, '8182b9e2a75e24df8baa24d213f2652845f75b30635bbfd1931045c5a50d128c', '图像 65.webp', 'portal/20241124/d0aa474d8f49097db52b3fe87978ab09.webp', '8182b9e2a75e24df8baa24d213f26528', 'e569934f667578b06ab7c409f29f7babc8e81410', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1122, 1, 67848, 1732436914, 1, 0, '14b463d4727df3cf5c2f90f1ce48ce44e0528feb337a2cd206e61742bd534d4c', '图像 100.webp', 'portal/20241124/338c25e5d0bc086b62aa40674af847bc.webp', '14b463d4727df3cf5c2f90f1ce48ce44', 'a4fd42a3bfc9c93687b3dceac1ac2bffedc6b978', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1123, 1, 59720, 1732436915, 1, 0, '2b2a3b0d4742efbbd9edecba7e794dca6eda93996141a88db0f6241c91427dbb', '图像 101.webp', 'portal/20241124/f02816347c8e3d11fa2e6d822529f281.webp', '2b2a3b0d4742efbbd9edecba7e794dca', '1726ccc074d7f9dc7ec1a6055b7cabc8e145e8a7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1124, 1, 2422, 1732436939, 1, 0, '38c4c93aa2f2fc424dea5f63a54e6916b3da0813ceba8bed75d74049f0b4d9d2', '缩略图.webp', 'portal/20241124/43eb190a6d36a0f4ed9662470746f0a0.webp', '38c4c93aa2f2fc424dea5f63a54e6916', '62de91138809adb6d9318a0db690b6ebdb96096a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1125, 1, 38876, 1732436946, 1, 0, '3d92a33ce986a35c11d8090100872454bc0811cd0a19cc4f00528e73b5a1a816', '图像 86.webp', 'portal/20241124/862a72eba5d2329344540917a6d5c950.webp', '3d92a33ce986a35c11d8090100872454', 'c2709453a35498830250b1452aa22de51c97175d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1126, 1, 24014, 1732436946, 1, 0, '9d249114389ad9aad9014393f77dbd26fa8fd06471ce773c705b8b0cfb0226ec', '图像 87.webp', 'portal/20241124/6328683d72a1364d9185db42d198997a.webp', '9d249114389ad9aad9014393f77dbd26', '7a077ab9bc23f956ac7a6a1d53670e73cc8f5397', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1127, 1, 11566, 1732436946, 1, 0, '802efee8998a790caae4efc6ad6ce121b446ead73ec15c0966ab0050d75d35f8', '图像 88.webp', 'portal/20241124/df6606709f45b96ab636051f3c278dc3.webp', '802efee8998a790caae4efc6ad6ce121', '7794c55fa25fc508c6fe43424ddb212103491bac', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1128, 1, 33176, 1732436946, 1, 0, '5ed0523f534be1b536d5a5c12f066840b608388f2ad792ee1548e7aac8c7c0f5', '图像 89.webp', 'portal/20241124/94d921ff82b4052f918962f659655c3e.webp', '5ed0523f534be1b536d5a5c12f066840', '37a1547d05f87f29a3dbc54d2dd175373b62c3ab', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1129, 1, 50876, 1732436955, 1, 0, '37dfdb23378c0749a7201c74d822be05ad32df51de2537dccd1a44ab0f862dc1', '图像 90.webp', 'portal/20241124/7a48a76cb8d1acafabbaedd35ca2f710.webp', '37dfdb23378c0749a7201c74d822be05', '53fe29c68352c09b615e82d0e8a2f6ee23fb775b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1130, 1, 3048, 1732436978, 1, 0, '1c37f7e8c0250689a4803a53c3a769dbb39e774152ab85c00489aeaf830b3b49', '缩略图.webp', 'portal/20241124/2c3ceae740afa4c7ac61c121366eefbf.webp', '1c37f7e8c0250689a4803a53c3a769db', '69dc6650cf252a76fdf0b8e6c03149685b501e86', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1131, 1, 15800, 1732436984, 1, 0, '30618000641ab83eabf0899a12a76658cc3648b7d9fd0d67cc26aa935ade7801', '图像 81.webp', 'portal/20241124/60a85a64f2ee90b37af409541d5b9ec4.webp', '30618000641ab83eabf0899a12a76658', '1948d5ba4a25a7329e1d06d1e3830da991df27dc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1132, 1, 16800, 1732436984, 1, 0, '94e406a1908233f5f4d3446f962ec0f69cd46b05e80847517696d6ee44c215cf', '图像 80.webp', 'portal/20241124/9a6af175c8686b1363f79422a1310248.webp', '94e406a1908233f5f4d3446f962ec0f6', '57208057f4ced993aa5b8d520facb5dedad12128', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1133, 1, 65458, 1732436984, 1, 0, '7e388a1309e35d0158749626684796b011a7be06b3a831a260e50d87f5d31e1e', '图像 82.webp', 'portal/20241124/3fcb4c4a70013df84be58c703de6a0fa.webp', '7e388a1309e35d0158749626684796b0', '20ba2156d8e92a4ccdab0d311a5b952d16eb01dc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1134, 1, 38730, 1732436984, 1, 0, '92ecf54e0b985000e28f9a33c23c047dd93f832c1582d9d95bebc01a34f9fc85', '图像 83.webp', 'portal/20241124/e4c1c82254959e996089730ff6eb2ca5.webp', '92ecf54e0b985000e28f9a33c23c047d', 'c4eddd422fc8fe7d6b3b92ff9facdbcca2adaa47', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1135, 1, 67708, 1732436991, 1, 0, '6d5e9c2f70052c632482615d36eb6c7405553ea1b3c11fb4d95a9a12fb80d578', '图像 86.webp', 'portal/20241124/ab87cb00b3a54a973bdaa42eba3d0378.webp', '6d5e9c2f70052c632482615d36eb6c74', '1640672754f6dfe3787fa66ef960546e124f47f9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1136, 1, 45050, 1732436991, 1, 0, '79340595d69a24238778f997870c523d433eac43313d73b377ae7923435b825c', '图像 87.webp', 'portal/20241124/ca57daea1ad95595fa969e0ccc73a52d.webp', '79340595d69a24238778f997870c523d', '28509b8db172d4aa4970a9e3d5b771f022fc8d29', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1137, 1, 3438, 1732437010, 1, 0, '83a2f7a6c4c5bd1a21f7878fd997f82011877500b8b34db1f4539cecdbfc566d', '缩略图.webp', 'portal/20241124/01b99863b3b1527ab2c0c77a0ba4f144.webp', '83a2f7a6c4c5bd1a21f7878fd997f820', 'bf9050b568b9cb2b1fd3ada4723b560be3254d97', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1138, 1, 92226, 1732437018, 1, 0, 'e1b8c139e8d56afd2bc395e8e368f9440ada5cf2ddcce2c1e8d37ab2fbee02b9', '图像 76.webp', 'portal/20241124/2ac8edbce48747585abb33f48ac6b8e2.webp', 'e1b8c139e8d56afd2bc395e8e368f944', 'ec488cf3dca9cdd8d1c070a3197ee99819798ba9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1139, 1, 48414, 1732437018, 1, 0, 'a89cb0cab235006fc2d9b2f33203a3cf4b52c2577b477962ca4887cc3a508981', '图像 77.webp', 'portal/20241124/795645aec040a8e0d4d096a2ecaff2c3.webp', 'a89cb0cab235006fc2d9b2f33203a3cf', 'ee13dee5a7bdac0cfee0964073be8783cc48a88d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1140, 1, 19906, 1732437018, 1, 0, '36b32ff3cf215f89332a9dd0caa53a5b95cff613eb1bf446453e4ff08df7c769', '图像 78.webp', 'portal/20241124/b39e94947503dec3cee4721b0a029e60.webp', '36b32ff3cf215f89332a9dd0caa53a5b', '338673bfd5355c7dcd03b4e35516af6a930f0054', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1141, 1, 10680, 1732437018, 1, 0, '18ff712e233fc00e4fda3dad3bcb74ba00dab17081a530cd9a1729911de4a96e', '图像 79.webp', 'portal/20241124/9fdf5d37d2d3bc519ef6a1a39d462885.webp', '18ff712e233fc00e4fda3dad3bcb74ba', '6dfccb90db8e6d7dd63d612603014ea6efe09a12', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1142, 1, 41794, 1732437027, 1, 0, '36d41549e811e60636fe2415a9fcfa0d540946d1c54a54b0b254ed5a55c37306', '图像 81.webp', 'portal/20241124/f5bfea48cc8197560a164207fdda5fa6.webp', '36d41549e811e60636fe2415a9fcfa0d', '2ecf75061ec38a4fa3ff8724fa4bbfc8bf510d22', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1143, 1, 33090, 1732437027, 1, 0, 'e4b391570f04f4427e1b5e46c94b31d1c81186781e79e255e47b1288257d07db', '图像 80.webp', 'portal/20241124/8a6e6874339fc0b34dbddf85b0731938.webp', 'e4b391570f04f4427e1b5e46c94b31d1', 'c10232b63b207547110204907e3b32cbad4cea87', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1144, 1, 2266, 1732437049, 1, 0, '1d4b43545cee0504a919373bfb4630c1c3843ee2173df33973a3b0d5a397850e', '缩略图.webp', 'portal/20241124/61662c74d859ba538b2cbadf23e868c8.webp', '1d4b43545cee0504a919373bfb4630c1', '932d9a4068ea9bd74ac1f1b3f5fb43d74fb1b9a6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1145, 1, 59878, 1732437062, 1, 0, '875b64a3f1db9d43b904e8a171af351f057d6ac3c1313528bd5414aa1287f862', '图像 69.webp', 'portal/20241124/9ce45b8f27bd2c19737a1d11c6884c87.webp', '875b64a3f1db9d43b904e8a171af351f', '98fe0e8668024bb4c1f741dab23f8216839cc95f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1146, 1, 49980, 1732437062, 1, 0, '2c304e45c7baba6e5aed74ded0878ff9f86bba8fae0cbebc169b844d4fd0ee1e', '图像 68.webp', 'portal/20241124/415739f82c55b2f9b1a9028ac39b4f2f.webp', '2c304e45c7baba6e5aed74ded0878ff9', 'b460bed91e1def3d1969921a2058df918b6458cc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1147, 1, 72488, 1732437062, 1, 0, 'c4cdb5557d52c578b152e71728614cfab1cf7f17596680a5ac687b2c15271d3a', '图像 70.webp', 'portal/20241124/e4b6a45af79712c59a2c2bb18808d64b.webp', 'c4cdb5557d52c578b152e71728614cfa', '5d6fd06315c1ef119c5618e2af442f141c1a4596', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1148, 1, 70454, 1732437062, 1, 0, '6da2ac06c70d6e73c1e5681d54ae128c00babc53670fbe2266fdf0828b16a8a7', '图像 72.webp', 'portal/20241124/f6feed6c898b2ed88de1731519373ebd.webp', '6da2ac06c70d6e73c1e5681d54ae128c', '8154a244a0f3b0186275b0da4d4869101954f450', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1149, 1, 63148, 1732437073, 1, 0, '0238c1237afc7cc0cfd7b995c290bebfaa24b78f0c4f04a11f55d82737868013', '图像 73.webp', 'portal/20241124/4142584efae956e9f6159c55164c94f1.webp', '0238c1237afc7cc0cfd7b995c290bebf', '2bd31e54366656548cdf6537c7732ad46ec84df9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1150, 1, 3072, 1732437101, 1, 0, 'bd2e9ea54e88f1297be278d7c4fff0a5d76fffedcfc511cd0226b9825b803265', '缩略图.webp', 'portal/20241124/8655cbb359772360bd2e6c2a3c18b2be.webp', 'bd2e9ea54e88f1297be278d7c4fff0a5', 'aa2a8d581ad6564582d339650ea4befa3a9f21a2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1151, 1, 49532, 1732437109, 1, 0, 'a81fa2e3200e541715b0bfc9b8486b319d82d0e039065af2e84ac8af6d41a401', '图像 62.webp', 'portal/20241124/e1d1efc1dca91ca4baebb6e89138e5d7.webp', 'a81fa2e3200e541715b0bfc9b8486b31', '40abd05a0085835bc3f95fd4cc795e15af099c02', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1152, 1, 55888, 1732437109, 1, 0, 'd077e8c817f02c7566b9e5a896842463c8baafaeb0200675c70d2f15552af10a', '图像 61.webp', 'portal/20241124/fa40b6b42ad661f477e25df3262bb957.webp', 'd077e8c817f02c7566b9e5a896842463', 'e15c252a831b58f3ecbfbc8382e2c75cee3eeaad', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1153, 1, 59116, 1732437109, 1, 0, '25f17d0b251dae7728769fd20de7ca49f974548d8b3a459f53d591498800dc86', '图像 63.webp', 'portal/20241124/3589512ae41bd81fa55c20279fc30759.webp', '25f17d0b251dae7728769fd20de7ca49', '6789db01d69aa35fe1b9f218b78afa26b4c77113', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1154, 1, 40968, 1732437109, 1, 0, '8e81837388366720190843c292b66608e49f5054ba646a4b26528c306018b383', '图像 64.webp', 'portal/20241124/e188b2775c109ee3c6598a092bbbca58.webp', '8e81837388366720190843c292b66608', '4b91f174c908bcdfdab8259afdf83264bbb1496e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1155, 1, 77470, 1732437117, 1, 0, '53dfe80e567c0ffba430f01f46c3bdb0fe4748d32476a1884bfe89e3a513375f', '图像 66.webp', 'portal/20241124/db75e3013c2926b0f193ed6dbf2b6c70.webp', '53dfe80e567c0ffba430f01f46c3bdb0', 'a755edf150de95ffe3766c1e8a17c5de37891926', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1156, 1, 3150, 1732437143, 1, 0, '464500407ad6362d2f05c8aa9e20ede129b1d3766bfbb3c83ebca49d0a53c229', '缩略图.webp', 'portal/20241124/88c58078daa6e9c74d8bf13c69d837f9.webp', '464500407ad6362d2f05c8aa9e20ede1', '85e62689107f126fee606066b1ceadc74939ff10', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1157, 1, 22472, 1732437152, 1, 0, '0c32f4e3a834db0192fdb677cdb30e439dfbd970e287d33861a92a4b884e99b1', '图像 293.webp', 'portal/20241124/973370c459b8f2c1b2abc89026090989.webp', '0c32f4e3a834db0192fdb677cdb30e43', 'c994bf3aa98ae0f2f7396dba1c481dc5fb3a41b9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1158, 1, 31226, 1732437152, 1, 0, 'a17806504cecf3289c57ad5b458c2340461d607ee49c2ea692e335d6d6b290b0', '图像 295.webp', 'portal/20241124/ef451519458e60085b87e517770aeb99.webp', 'a17806504cecf3289c57ad5b458c2340', 'e7391cd4d7f6e97e1e732a7a98706e08fca853f9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1159, 1, 10624, 1732437152, 1, 0, 'cd13a008f4f848c1c4376de018f98ed709e003538139861fbad6f91919d3da64', '图像 294.webp', 'portal/20241124/6b4f82aa96bfeea71085685ea85e9847.webp', 'cd13a008f4f848c1c4376de018f98ed7', '1339ac41afed442f52c18080ef915848ff53af66', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1160, 1, 18950, 1732437152, 1, 0, 'd982a42970e427c88f8ded97dc8adec3e91e1d620b1dcd561aa7862c69e95820', '图像 296.webp', 'portal/20241124/fab6231431347e9410fbe9074d35d00c.webp', 'd982a42970e427c88f8ded97dc8adec3', '11e9cb643c130c9e3332c1ed165b5dbe82227702', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1161, 1, 12892, 1732437152, 1, 0, 'd9d64d66ab2b2ffa08948f0abcfc8f82bb335c3632e1a2570d82a8a85628c4f1', '图像 297.webp', 'portal/20241124/55fdb4db8c5bd5f52156bf8c2b507403.webp', 'd9d64d66ab2b2ffa08948f0abcfc8f82', '1bbbc9a20d4c77fba930e4c79b0269985f5444d3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1162, 1, 41124, 1732437167, 1, 0, '6121cfd22a9df265a59b6444f41db51ac154fb887d616efdd0e800483f60a098', '图像 290.webp', 'portal/20241124/dbc88ce8ce10068abecac3e59359224f.webp', '6121cfd22a9df265a59b6444f41db51a', '9d15049bbbcd17497aa2192aef8d1ef21fab3e65', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1163, 1, 56482, 1732437167, 1, 0, '0673722a794297b35c8d49f777ad139f0c941b4d4c8b70d35ca23ce0e31f3256', '图像 291.webp', 'portal/20241124/aa4c8f8eb17550fb1974382df3e6ee64.webp', '0673722a794297b35c8d49f777ad139f', 'f94a06398d1676438a0f26a269349bf869b91e32', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1164, 1, 3946, 1732437204, 1, 0, 'aa685308dd643ba8fa1bb65ef0e2546607a5d515ca26de8eed231f33c4e8e7a8', '缩略图.webp', 'portal/20241124/4e691e59a2aa999a73af415e9ff5419a.webp', 'aa685308dd643ba8fa1bb65ef0e25466', '5f9d8c9ea26544d6af780732e5d48f6ddf699a60', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1165, 1, 39416, 1732437210, 1, 0, '088fade821346f8bdb29140d5fe9850e267270ade340dba1f851f3308cfef583', '图像 231.webp', 'portal/20241124/5eab5881772ec189f818fb0e2fbe523c.webp', '088fade821346f8bdb29140d5fe9850e', 'd8d03d201763ba45d9126ba16f01d82482c1531c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1166, 1, 33412, 1732437210, 1, 0, '35daa1ad4d85b5064702936edda0b709e0fe9276a82c79ef8d7e384f3a821a01', '图像 233.webp', 'portal/20241124/6d43e4b45dbea1d8036d0c6e84698110.webp', '35daa1ad4d85b5064702936edda0b709', '1f6f66d0da2b3f4bf62d0ed753b5842830b7ef9f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1167, 1, 39808, 1732437210, 1, 0, '4425812875a178194408637a32a9c8258c3447cac7fa2b16578e80d5745be680', '图像 232.webp', 'portal/20241124/2d899323a237b9f15ff678a60e9cc5b1.webp', '4425812875a178194408637a32a9c825', 'aaf8730d94aaca79ecca148a426b50c55a9980ba', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1168, 1, 36160, 1732437210, 1, 0, 'ffc87e6c9f81693ade10c5ad335d80a645a68d9fe9f7dae7cf1edbb58ce3379d', '图像 234.webp', 'portal/20241124/041c8db09975f7733d88c28e03758b44.webp', 'ffc87e6c9f81693ade10c5ad335d80a6', 'c3e7d95cfbe82dfd6e8f8476a02f67a5bedb0f4b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1169, 1, 25730, 1732437210, 1, 0, 'e62ba9d74617fc189ed6b03e5c116c6792751eb848265a65a96c68c88764e6b3', '图像 235.webp', 'portal/20241124/e60e938cabd2273ece27e265a953085d.webp', 'e62ba9d74617fc189ed6b03e5c116c67', '90abbc8bb20004381665d76e802e15fb513d024b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1170, 1, 54134, 1732437220, 1, 0, '13e5e8306dfdb30a94cadf8d1b57d8b88a08241add6165c848e0350253e96412', '图像 240.webp', 'portal/20241124/82801ea1990bc6e5b14d93acf8ac5def.webp', '13e5e8306dfdb30a94cadf8d1b57d8b8', 'f6eb5f874b2eb24ac7ca928001d9e2470533b132', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1171, 1, 32620, 1732437220, 1, 0, 'a953b553d475c0e59d11ed93590a3f7eb776f0222db9aa1e658cf62f6a899fc2', '图像 239.webp', 'portal/20241124/706683b79a71a9b4c957457f6dfd2a8b.webp', 'a953b553d475c0e59d11ed93590a3f7e', '4da31019a584b4c83d6777125648f14216e5cf03', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1172, 1, 2536, 1732437225, 1, 0, '9d5618b280f205de3cc77ba0ce6705292179d57e9b8c3411117685cf96f3de50', '缩略图.webp', 'portal/20241124/d9f257066020ca89452f18c96b31b7d4.webp', '9d5618b280f205de3cc77ba0ce670529', 'cdbcbe7878ccf88b40c1060088c21cefc506b36a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1173, 1, 19944, 1732437234, 1, 0, '890e20a8141d94b5bbdd051d0ed719cc30b96779ca691a152cebfba0da5b0992', '图像 361.webp', 'portal/20241124/b1ed4ce60654db1bd5f4e8c8abdb585b.webp', '890e20a8141d94b5bbdd051d0ed719cc', 'c5e2149dbfcdd2f3bdba8bb13d07ab5d097280bf', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1174, 1, 19562, 1732437234, 1, 0, '52cc37cf8d3d92f81684dd6465c0fbba8a62f680fedb423d5df49eb43919a37b', '图像 362.webp', 'portal/20241124/01f2fddb5163b7900758951eb4271389.webp', '52cc37cf8d3d92f81684dd6465c0fbba', '1311f56443c61653dce895adead2b6956037cc3d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1175, 1, 12030, 1732437234, 1, 0, 'e8fc742cff614d560e347b30c0cb08a096ec76f1a84ef740c001dacb99630967', '图像 363.webp', 'portal/20241124/fa5cfc1a3267b75ca2ccc3748b2358aa.webp', 'e8fc742cff614d560e347b30c0cb08a0', 'd91865a7ac831e91e143bf47ea388cc052c1aa8c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1176, 1, 78328, 1732437234, 1, 0, '4389af939830472809e163c5de3e37c4919a3539bb8f17372b7d8fc2cbdb54ac', '图像 364.webp', 'portal/20241124/ee66131c41df0a8751998911aa31f95b.webp', '4389af939830472809e163c5de3e37c4', 'a4f997116827c61c07f850a9f9af744e110f4955', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1177, 1, 5138, 1732437245, 1, 0, '959322e6a7998e109e5c95f950e32f58e977a050a0166960a70ed761ed973673', '缩略图.webp', 'portal/20241124/72aa18993245fff5626029c225955c2d.webp', '959322e6a7998e109e5c95f950e32f58', 'f3c892653a32fc6af9325cdb5b983de0a0c5c508', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1178, 1, 20574, 1732437245, 1, 0, '9e7aa014051d7263ce165d7565a51ffa2141b6534cb7371d074699b0cc949ab6', '图像 370.webp', 'portal/20241124/c087f13b36ff60b103036a6c80c14379.webp', '9e7aa014051d7263ce165d7565a51ffa', 'a1ed89c89c2889863f7cbae31cbb1b2494aee34e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1179, 1, 12846, 1732437245, 1, 0, 'c49e61fdad10d3b469491169f40dcecec354ac063d51d4b53fa7c8b7829fe86a', '图像 369.webp', 'portal/20241124/d1ba97cc7e607a6a0c62be149aa7603a.webp', 'c49e61fdad10d3b469491169f40dcece', '59d6d9eda31eb79dd94e70fb571e92a1f79977ce', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1180, 1, 88038, 1732437252, 1, 0, 'dc11b1d3a1c61df5c7cab108a5ca0ee29e2942cdd3a4ac01035afc77535d105a', '图像 270.webp', 'portal/20241124/ec36adf24d26f51dd0145d4b59f69a2f.webp', 'dc11b1d3a1c61df5c7cab108a5ca0ee2', '053dada0fd51b574a04d6e1c5cf4c8f122db79c3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1181, 1, 31498, 1732437252, 1, 0, '9e7ec09d9deedf1a28ccf7e4f6f27a372aaa00be3798c2ee8b808740e18191ef', '图像 229.webp', 'portal/20241124/5f91bce75ad897fafcb905f9ae0ea2ec.webp', '9e7ec09d9deedf1a28ccf7e4f6f27a37', 'a5c696bd3533013a5aa40f754989828b06556155', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1182, 1, 30970, 1732437252, 1, 0, '7c528e96b1795555ae9767fb0638e42b83f15694e4de3c26b624c9ffa9181224', '图像 231.webp', 'portal/20241124/488658a8d33da4eba475bb3842a4cc1b.webp', '7c528e96b1795555ae9767fb0638e42b', '85b9ab7d7cee4f1bd95f5e6410e4d988247c86b7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1183, 1, 22050, 1732437254, 1, 0, '9a9bdaa8e0c3a9abebd8f01d9b4f5e34d5b706d03d3a776887322742b7e6c76a', '图像 230.webp', 'portal/20241124/346276c668ce46ebf94c200f1128888f.webp', '9a9bdaa8e0c3a9abebd8f01d9b4f5e34', '40656e4fef8131fb5238f203de1a57e13d2d45d1', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1184, 1, 25168, 1732437262, 1, 0, '7b277fb264b2311e9a60ce1cd34d211dd1d14867dc33d31a99f4c5a9cee87610', '图像 233.webp', 'portal/20241124/af93bbad2078b7fe5dbd5caec40ad0eb.webp', '7b277fb264b2311e9a60ce1cd34d211d', '79003df1a15fbe6aea339f2449e52a85427258b2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1185, 1, 63212, 1732437262, 1, 0, 'e54a882a8042f145f8b28273420d13e480abdbe30e14e4315ae9b0af306f4c1e', '图像 232.webp', 'portal/20241124/b4223ce1e1a8af44e3bf7393769774a8.webp', 'e54a882a8042f145f8b28273420d13e4', '42ab139b41cbf5974cb5e52bd897177c52324f71', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1186, 1, 7714, 1732437361, 1, 0, '5c921229cedd6341c78ece791526597b737f890bb406b54b5335731cffb8ec0f', '缩略图.webp', 'portal/20241124/1e6f7a2d83aab6352970f59436c99e27.webp', '5c921229cedd6341c78ece791526597b', '5059146c7af25b8f122238badc7f83f05f55e2dc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1187, 1, 35092, 1732437369, 1, 0, 'f6211b64a4ab6c2e657eb4244853470ee1f33ebbe2e76a4510d1d5c6294372d2', '图像 227.webp', 'portal/20241124/5637aebe20e4bdc2960e8efa4ab2e207.webp', 'f6211b64a4ab6c2e657eb4244853470e', '715d80be12e0c76f921db97b8858d58e6deb1feb', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1188, 1, 30688, 1732437369, 1, 0, 'bfa6dd0866c5158a5f869109697dce7d40f70fd045c76c343d41c9c54bc4a369', '图像 229.webp', 'portal/20241124/d6e3c3e884a5d4c697e2d5b6fc532b5e.webp', 'bfa6dd0866c5158a5f869109697dce7d', '60f77d4c93cc531e394b8a4bde54f9d177484653', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1189, 1, 36286, 1732437369, 1, 0, 'e519da8a978b466734623cf0eea892176181a999dcc5b01674f600d5869450e2', '图像 228.webp', 'portal/20241124/5d9b232790723078f3001cc1ffbf1832.webp', 'e519da8a978b466734623cf0eea89217', '5d8439f517665961dd284c93063cba6887830d46', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1190, 1, 55784, 1732437369, 1, 0, 'b14a7ebb99acc2fce6c57b2c5ee6910989758da55f5bd4c0c46bf09be53d370b', '图像 230.webp', 'portal/20241124/18210f5e7ac9785377b6946492ca045b.webp', 'b14a7ebb99acc2fce6c57b2c5ee69109', '6cc35f25be5474e7e56315fb87eba8d48b75e7f9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1191, 1, 48006, 1732437379, 1, 0, '289210d9480f3cc423db96a485890731907054243b7930901d7e454e733b9e8f', '图像 217.webp', 'portal/20241124/ae0c1e3840800971969c165736055f94.webp', '289210d9480f3cc423db96a485890731', '31fb78ce76037ab92fbf8745bd36d9299dfcd45e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1192, 1, 31618, 1732437379, 1, 0, 'e56b66980eff5196697f0efc2f263252a628e7a6d2098bf7f7fc493462b17c4c', '图像 221.webp', 'portal/20241124/9c688ba861318346b6c8426ef6c66100.webp', 'e56b66980eff5196697f0efc2f263252', 'eccd870fe2fe8a8d7b059369b34a9047ddf6ee93', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1193, 1, 4210, 1732437396, 1, 0, 'b93300117c97556b73890ff07a189b7b76ef6ddee60dc147332754b2dae2f001', '缩略图.webp', 'portal/20241124/0098920ef96fc59b5f6d8a28cf749316.webp', 'b93300117c97556b73890ff07a189b7b', 'fc0410de5b765fb2f48900893b0775d96387a46d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1194, 1, 27586, 1732437403, 1, 0, 'e63554baf300aed3aa6497435bbb0f917e9121d9da70360e51ef73496e21f92e', '图像 216.webp', 'portal/20241124/8ed379835e7205635d4ce965a7af2174.webp', 'e63554baf300aed3aa6497435bbb0f91', '63243fccc061b84464b058ac3442f1fd51afcc9b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1195, 1, 32042, 1732437403, 1, 0, 'cacbb8633d15015971adc568aa57e5367a3bc7299d5ddc122508ef5d7b956283', '图像 218.webp', 'portal/20241124/4950c3678dfb171cc5a7432a003165f9.webp', 'cacbb8633d15015971adc568aa57e536', 'c937c8f4fafdee4ace36d4fb822f68a1cee30769', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1196, 1, 23804, 1732437404, 1, 0, 'bbecddf3ba84366a0289e362fe1b5889b1e7f0021ffa1d22c0304a026916cff0', '图像 219.webp', 'portal/20241124/70dd33b61553ed2ca3abdcfb9cb00846.webp', 'bbecddf3ba84366a0289e362fe1b5889', '94200f88c46f17c8229e26ca10c8bd257e48b54e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1197, 1, 35346, 1732437416, 1, 0, 'd59f01e21c54892e88f3928618b6980f9fa774708b50c6c7b72813f9f24617a2', '图像 225.webp', 'portal/20241124/d7c48c8d944c1fdc9e2d1f8a9ba3a59c.webp', 'd59f01e21c54892e88f3928618b6980f', '93685d63e46af9fa06e149f5d4063dfd42224a69', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1198, 1, 2954, 1732437447, 1, 0, 'd8a571b9f40c769ecf3228775f8f009ec02fee5a9ef539057da75d0da71e854d', '缩略图.webp', 'portal/20241124/8b216dfff48c6f64b28036c693384a4b.webp', 'd8a571b9f40c769ecf3228775f8f009e', '8577708f076d8ec3bbfec8cbe4cf95f7daa3a664', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1199, 1, 10834, 1732437457, 1, 0, 'effe33a851be1a2a42d031e83052460cc605116f61ce74ea8107aa6396a34519', '图像 351.webp', 'portal/20241124/7322762bdc83bf3ce93ee2442e56f10a.webp', 'effe33a851be1a2a42d031e83052460c', '7d7bd62cb3897af3c474ed3955d2f9a9c81c88c7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1200, 1, 26096, 1732437457, 1, 0, 'bc4d1f045d6d9c2774c12f93fe7c37888ff4d1d09c529ecabd9e14fbf92ccfd0', '图像 353.webp', 'portal/20241124/c3dfd44616078132a56abeaa24f2e675.webp', 'bc4d1f045d6d9c2774c12f93fe7c3788', '9100fddc348d63eb0e8c993c958d0ea734bb004a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1201, 1, 47286, 1732437457, 1, 0, '2921bf6a2ee2c29c500d124f31c095aacd7ecbfe18db04aae7446ad2872c233b', '图像 352.webp', 'portal/20241124/12e2caca4c91fd091f530027c1a789b6.webp', '2921bf6a2ee2c29c500d124f31c095aa', '80fc552151316e7484881346ef1bb873a9e7432a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1202, 1, 46298, 1732437457, 1, 0, '09532a1ddfb61b47af9ed9c69c7180cae4f43358bd041ff3b5eea167aefbf20d', '图像 354.webp', 'portal/20241124/1ca0609eecca75a21ed379d0edfacbf3.webp', '09532a1ddfb61b47af9ed9c69c7180ca', 'fcc7d7ae71eb926c4400b48dc4a15fa390006526', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1203, 1, 12854, 1732437468, 1, 0, '55ca9403d6027e75283c0946670ef93c01e6b0bbaeb8e1fd04467d31f183fb02', '图像 358.webp', 'portal/20241124/a96256ed391b4234f57a03237ccddbe5.webp', '55ca9403d6027e75283c0946670ef93c', '3d24d5a357a0e382bcaa37e76681331800ad0587', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1204, 1, 32230, 1732437468, 1, 0, '46b2fb44c384ac03fcda61d9283caf919c2bdcfec022e6c26284c7226b0d61c8', '图像 359.webp', 'portal/20241124/7faaab9c9a4919b99beb7f2b2129f923.webp', '46b2fb44c384ac03fcda61d9283caf91', 'b34639f0ab709fa5067b8f7c866c7771171d1cb9', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1205, 1, 2718, 1732437487, 1, 0, '33bc8ae9d95a32cc5d4b8f838c6e71f23da89d1fe74f3659176a67017cf64f68', '缩略图.webp', 'portal/20241124/d4f6e8bbce8b1a140ab9b2da18e1a5ec.webp', '33bc8ae9d95a32cc5d4b8f838c6e71f2', 'a37b1f8f55234a122234192b32da2a03d9c9ba28', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1206, 1, 14830, 1732437495, 1, 0, 'fb340320a7351c343ccead59b1198d270939392d4032c20972f859641f063199', '图像 347.webp', 'portal/20241124/0af21bd7e6a91758b47316196ca8115b.webp', 'fb340320a7351c343ccead59b1198d27', 'd775729b44b0664964b41c91c9e7dead6ad79cbb', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1207, 1, 45910, 1732437495, 1, 0, '34891f2d3a18600b2b563cc22e1471b72b3199d8635e27267bbd2a15680f3973', '图像 349.webp', 'portal/20241124/858b61c53dd53cc723b74d48f625443d.webp', '34891f2d3a18600b2b563cc22e1471b7', '246dd3e75172cb446093ae7730548efd232ee9f6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1208, 1, 9900, 1732437495, 1, 0, 'caa7055faa42456b49b85a163a68a03696362a8e435bb9a6a14722e8996cee8c', '图像 350.webp', 'portal/20241124/785e2443d12a7fd75d64c4b61abdc825.webp', 'caa7055faa42456b49b85a163a68a036', 'ecf156c193fc55d5ebecaa5462c9c2772bde0e29', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1209, 1, 56838, 1732437496, 1, 0, '0c2c52f1f44d01845381ae02420cf7c67f5c7a0296647d54506e426a7012742a', '图像 351.webp', 'portal/20241124/1f095953cdd9b9124821be02ad38f820.webp', '0c2c52f1f44d01845381ae02420cf7c6', 'fb6267771126db5b53b5ab7e1fd98040e9cab666', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1210, 1, 6332, 1732437496, 1, 0, '2679446e78734bb8bb2dac5746837b7a50c56e58aa6e7a5fd8f36507ed0844b1', '缩略图.webp', 'portal/20241124/ffae7aeb341ceec68537162957f154b2.webp', '2679446e78734bb8bb2dac5746837b7a', '86e0b47874ec102f1cdd5ecca0d63c7a458228f6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1211, 1, 58462, 1732437503, 1, 0, '131ed075605826c5039d03fd4a92e8218439b340771b0f5a0dd597f5906b673a', '图像 288.webp', 'portal/20241124/d0106a6ac039f1d7582bb4114e71e1cd.webp', '131ed075605826c5039d03fd4a92e821', '40c9d99e6a6ae848d78549ab135ee65556bb3fc1', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1212, 1, 30186, 1732437503, 1, 0, 'a84734db0b0e6585668c55bc2240b7d4a171a4967ee8ee0f7f1640e9a7566b76', '图像 289.webp', 'portal/20241124/60890636e3ebc87170ea4d840fb9b4f8.webp', 'a84734db0b0e6585668c55bc2240b7d4', '049b1ab104a34e2e87a287bad0a3fc3b3c8e185a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1213, 1, 36894, 1732437503, 1, 0, '3e6f439cbe2d52572396f608cfdd163c796901bf3fbcac1d0c7867a599954171', '图像 290.webp', 'portal/20241124/5c6747d67464764a9716aa7569a23a3a.webp', '3e6f439cbe2d52572396f608cfdd163c', '603805f49fc9f1d1c461fa5cf8bde2f04d0324d7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1214, 1, 63418, 1732437503, 1, 0, '13cd59995fa48d8d87e2b4146c64b281c71020039fdcef3a2c0fe1d19fdc9fec', '图像 291.webp', 'portal/20241124/86f0a6c35bf540c5bbf167389e0a42ec.webp', '13cd59995fa48d8d87e2b4146c64b281', '6b2f4e27c0226d7253d00dcb09ab8fd35e43ec10', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1215, 1, 49756, 1732437507, 1, 0, 'fb9e64c9477af6a6ba738280f03255cdac6a2e1e6c2b659d555ea90227d0f0b9', '图像 355.webp', 'portal/20241124/53e630414746500a580a84d50fc65f08.webp', 'fb9e64c9477af6a6ba738280f03255cd', 'a8e7ae307b8bdda53792d958eeb2f94ae3c15709', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1216, 1, 25004, 1732437507, 1, 0, '8e3cc569521459f3acd196a747a9d84993dbe91e52d1ff6541f4a69cc7041777', '图像 356.webp', 'portal/20241124/a6ced4d47a1377f26bb32a65f875c4a5.webp', '8e3cc569521459f3acd196a747a9d849', '721b5729140b45fb205e2035bbba959576952097', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1217, 1, 38166, 1732437513, 1, 0, '7885904f4fd11c13b69e71bacbedd077b328ca1e3a4b6048887e5a45738d6005', '图像 297.webp', 'portal/20241124/88eda87cbf881a39642dcd205fbf4767.webp', '7885904f4fd11c13b69e71bacbedd077', '9711c3a693e55ea8364a16f60637b3ba5065b291', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1218, 1, 54458, 1732437513, 1, 0, 'ce8a80f13f46abb0ed7a9f71a443b60c63b7cca3353ebbb5e838013705f12db2', '图像 298.webp', 'portal/20241124/5242e5ae110329cc09f071bb55232c8e.webp', 'ce8a80f13f46abb0ed7a9f71a443b60c', 'cf68cdffe5fef34784fd4bf054da0c279aea4942', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1219, 1, 3456, 1732437528, 1, 0, '0ad60502cc11020bdc4fcdaf18868785cc6762e444d84a69031ef23107981823', '缩略图.webp', 'portal/20241124/b9621f60596784a3faebea5b40436c74.webp', '0ad60502cc11020bdc4fcdaf18868785', '17fa304075b2639cae0a3aeba5c0c4adf1bfbb35', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1220, 1, 6850, 1732437533, 1, 0, 'b0d66412380696e047a75a1b73febc346600c7d078d79f35f64028597b19d304', '缩略图.webp', 'portal/20241124/d6f1689a2c01e0ec433a4cc3836d2021.webp', 'b0d66412380696e047a75a1b73febc34', 'b05e761dc5a53ffd796899228f3a17ab17bd5eea', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1221, 1, 12042, 1732437537, 1, 0, '9a36fdfabd49064872069627a78b816530525b998fb9df4c00b73b0634db7f74', '图像 343.webp', 'portal/20241124/164131794ed4b5ccb109973477726bb9.webp', '9a36fdfabd49064872069627a78b8165', '58d057d694cd9854381b22240c9944d40ee36d60', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1222, 1, 10628, 1732437537, 1, 0, '20c4951c81b7d19f6880c8aec09017dbf0f0fe74a5372f0b7e66d5b1b682fd0e', '图像 349.webp', 'portal/20241124/d8f130ab94b54e6d1267849ff53b7984.webp', '20c4951c81b7d19f6880c8aec09017db', '6dd8b81f59d0b7093f84dc32fd1db9178993c663', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1223, 1, 18024, 1732437537, 1, 0, 'db980bd060daaa32bf03ef6d1e0777e8fe9595c9908bc93b83a98bbed7bd15d3', '图像 350.webp', 'portal/20241124/709feb262f28c09a203fbffac2c0dbeb.webp', 'db980bd060daaa32bf03ef6d1e0777e8', 'd58e0dc4a447be4fd7247f6dcd07820e7354ea67', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1224, 1, 22342, 1732437539, 1, 0, 'b5a420db1c59106b17bb581135f70c6dff3546ceec71519c58f7090ff7387f1e', '图像 280.webp', 'portal/20241124/ca60c84b4b913543da0047c565125465.webp', 'b5a420db1c59106b17bb581135f70c6d', 'f665f75b94a1c130386c8167a83ae2dd612f9833', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1225, 1, 33072, 1732437539, 1, 0, 'bddfa661e3c47de3455aacc5463530110e862578d462619fc03d61544378aa06', '图像 282.webp', 'portal/20241124/e0ae83d29e4e4d2e90ef5ecb7f1f30ac.webp', 'bddfa661e3c47de3455aacc546353011', 'bc89340bf7db55b58b52ce628cf7b88cd6f37af2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1226, 1, 37098, 1732437539, 1, 0, '1e02e082c0c08a88e8846bbb00db5bbfa57e988b1819f0966e4d0a1b473719d9', '图像 281.webp', 'portal/20241124/7e8bbad9abb5038a69595356fa25cb90.webp', '1e02e082c0c08a88e8846bbb00db5bbf', '470570d81db308391e08a4fec08a0fc5064183f7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1227, 1, 29622, 1732437539, 1, 0, '17307d60b750b568e77f4691bd4da6e0ee585065de3b8730c992d15f808aa914', '图像 283.webp', 'portal/20241124/88cbe3aa8bece0846983ddc9b6fc3c75.webp', '17307d60b750b568e77f4691bd4da6e0', 'c53a7a9e3eb14834a1f676159ee41df75e1a09fd', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1228, 1, 9844, 1732437546, 1, 0, '08b6ff2436ce76675b25d76753730b26f36c30ca27f9a414aaeda47aa43817bf', '图像 357.webp', 'portal/20241124/585f843ab890188f616e1e230cab51c2.webp', '08b6ff2436ce76675b25d76753730b26', '7cf188312c82451d307ba1a3a04476ad8ed664b1', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1229, 1, 14798, 1732437546, 1, 0, '3ab1152800241a8cf8d168d86d4f0091da56b9e94ab9fc23c0144e9ef76fd351', '图像 358.webp', 'portal/20241124/069616b65008321de75fd04272bb3e0c.webp', '3ab1152800241a8cf8d168d86d4f0091', '11fe97cf528a0de29ce83901a463d71ffc62b1be', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1230, 1, 104062, 1732437553, 1, 0, '82162a1580a12248b7afe62acdd1c0432c5b22dc218e148457c6ca12b9820670', '图像 290.webp', 'portal/20241124/54363077ccdd87d549cf180f2c8be82a.webp', '82162a1580a12248b7afe62acdd1c043', '7b00730c05a7ae4a472ec1580bd8043adc9e4913', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1231, 1, 42872, 1732437553, 1, 0, 'f7da034912e6647003971a258e0ae5ac55eab566121736def911b3f86809fa58', '图像 289.webp', 'portal/20241124/c6bf6ad982f941bea9150fbee2b14844.webp', 'f7da034912e6647003971a258e0ae5ac', '50b7eefbb4b58707172064aa202b0addd9c1ee2d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1232, 1, 2126, 1732437566, 1, 0, 'a4c1c103dcb777d3bb1256a9a719e435119f8b53f18f5896568f6817b72a3a4b', '缩略图.webp', 'portal/20241124/c50f601677dd2f2d247a8ceddf578d4c.webp', 'a4c1c103dcb777d3bb1256a9a719e435', '14f3bded8f035e12d39d04d8fb5e3088d79e0e1c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1233, 1, 4604, 1732437573, 1, 0, 'a4b952068d6fab2b99c9def2f8a2b978d03c4b4b907c1bf8f6962ad1afbbff13', '缩略图.webp', 'portal/20241124/8638bfdab518a04791104a9405b96af6.webp', 'a4b952068d6fab2b99c9def2f8a2b978', '32aef54ca58e1abeb2defa115df8dd4c7a62d4c8', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1234, 1, 13486, 1732437573, 1, 0, '20aa10eef865c4b9a947aada5707189bc167670b620e5b8d36917e95570b49ce', '图像 345.webp', 'portal/20241124/96425a4a4ebb2ddc688669f58c07cef6.webp', '20aa10eef865c4b9a947aada5707189b', '359957ccd512a4e010bda4e2fa8ae470380a910c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1235, 1, 16436, 1732437573, 1, 0, '02b520156afe079264a7e5fa4380a89f8fb669c35fd59cff38d5a6f978fb2920', '图像 347.webp', 'portal/20241124/255e3b7a470cbb682ea5215230818ba4.webp', '02b520156afe079264a7e5fa4380a89f', 'b2be2e829cee31a75febc56a66ff8a26ee4bda26', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1236, 1, 8600, 1732437573, 1, 0, '4fe623a826aef2f455aa15201be010df37ec7ca3a629ba03f868344f8b69afad', '图像 346.webp', 'portal/20241124/627a37f35a277bcbdef467cccebf3c63.webp', '4fe623a826aef2f455aa15201be010df', 'ea08dc156b0a506ecc6261b2cfb22f89b3350bed', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1237, 1, 40662, 1732437573, 1, 0, '3a5c3d456edba42f074fc75aa2d2e9d1be355baab4b2c95dda405e56071373e6', '图像 348.webp', 'portal/20241124/f14b1a4ded5e2039ec84ae13843d7052.webp', '3a5c3d456edba42f074fc75aa2d2e9d1', 'f7467901ce43651693f79475c601e19b99785a1e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1238, 1, 47368, 1732437578, 1, 0, 'b3dd7e66a1babc655967606c6c8f93ba3da864b1c562db2d37536116eec2930a', '图像 269.webp', 'portal/20241124/16b88c1ab5a75e220f31c86e936f3fbd.webp', 'b3dd7e66a1babc655967606c6c8f93ba', '1e0d74b0c7ca0ad5b448fb2a509f9d78e271e644', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1239, 1, 33070, 1732437578, 1, 0, '3dd8ea56f94d62ec2e1c8208287040eb3e83c4dc4de401fb3a73c52bd8c37e07', '图像 270.webp', 'portal/20241124/246ef5568cf2418e3e8b297422c139f4.webp', '3dd8ea56f94d62ec2e1c8208287040eb', 'eec76aa6e952a8c0fda895526adde173aef586f0', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1240, 1, 30168, 1732437578, 1, 0, 'e5e412972ae7c2ba35db9161f560e225b470c9b2b2682a746b4314a75aadff91', '图像 271.webp', 'portal/20241124/2604d56af9232b565cd7ae4a481a8940.webp', 'e5e412972ae7c2ba35db9161f560e225', 'bc8971ee57bf5dd52041ef56e81f42850328dc68', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1241, 1, 26240, 1732437578, 1, 0, 'b3eb390a5d49e102f61ae611c219ceb81540cf205f978b8c164b0690311ce791', '图像 272.webp', 'portal/20241124/6efaf3f859605a3c273d9ac28a312eba.webp', 'b3eb390a5d49e102f61ae611c219ceb8', '2eae7657a7c9ded78e6d2c0e68adefca1e1320d5', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1242, 1, 15442, 1732437582, 1, 0, 'c496d503670306fa467c4f43159b1c991177f639f93dbecdedaeaaf8cfb519dd', '图像 355.webp', 'portal/20241124/38d7b73486fbeb8ac4c5e1e6fdd79700.webp', 'c496d503670306fa467c4f43159b1c99', '543d039f9c8d314afac04d3dc57d48d804a37fcc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1243, 1, 35924, 1732437582, 1, 0, 'bdd78b82b332006107455953bce18c13c94c70850666e63291b1c9c1cf4b4ab4', '图像 354.webp', 'portal/20241124/1a49d3f6479f5f4c47f0bb110999dc85.webp', 'bdd78b82b332006107455953bce18c13', 'b308140b21abbef6008518051780314bf6bf1440', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1244, 1, 57452, 1732437595, 1, 0, '215e3f9011357e8dd9ace62ff76650f017ecd114d628635ff9963b1bd6f4bdc5', '图像 280.webp', 'portal/20241124/20278ee3f31ccc478c9de4f1a850f28e.webp', '215e3f9011357e8dd9ace62ff76650f0', 'e5e1bab4d22dbc421933edc81133c225b59ce235', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1245, 1, 43146, 1732437595, 1, 0, '389067ef760ec0034510f817c1f82ecc56174e1e66f5e53d1e11cec3d3ec4baa', '图像 282.webp', 'portal/20241124/766a68639bc5bb6b7097dde6af6b2e65.webp', '389067ef760ec0034510f817c1f82ecc', 'c2d1f4077abe2f78f8eae5f0c00bec372554b162', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1246, 1, 3146, 1732437620, 1, 0, '355b100dfe7150ceb81c65780f5861727bdedb49b02c0d15cbc1fcbb5b6c8937', '缩略图.webp', 'portal/20241124/6daa49151e8de46b0d65732fbab827e3.webp', '355b100dfe7150ceb81c65780f586172', 'bf60d72c2af92730bfb289786d401f2995d71b57', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1247, 1, 8544, 1732437630, 1, 0, '68f584d549cc1fe8818e2ab1bfa94076ddfae5325700db22bf4c3aabd94948ac', '缩略图.webp', 'portal/20241124/9c158f09b1a926040f2dfcded4d5c853.webp', '68f584d549cc1fe8818e2ab1bfa94076', '2b9a47dae7a883f23605b0cfd18eacc25ae0051e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1248, 1, 10696, 1732437630, 1, 0, 'dd45a1a9c5eff6cc808fef0b70d773218ed09d51ede0f8e12e4eaf90ac2cfe55', '图像 340.webp', 'portal/20241124/e209933b30ef29fd699eb218a15fd93b.webp', 'dd45a1a9c5eff6cc808fef0b70d77321', '92c4979b54308364aed01d0e574a78048fa652b5', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1249, 1, 15404, 1732437630, 1, 0, '7c657224cef70277107c3615a9de9c741c44b2d024d9ab025c6af6faee91dbcd', '图像 339.webp', 'portal/20241124/85edde5c75609fbc98045e31ec38ede6.webp', '7c657224cef70277107c3615a9de9c74', '153344edb9728e222010536da0795ca4c9823b95', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1250, 1, 54968, 1732437630, 1, 0, 'f5f96f7d9dd98bc45573a648149b1cb3a5b834918b35da9b07e06a8e7de640ca', '图像 341.webp', 'portal/20241124/e0fdd8229599c0cecbd9c6fd46bef06e.webp', 'f5f96f7d9dd98bc45573a648149b1cb3', '8f6577fb424a4d59a784bb56025f431f3c41c87b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1251, 1, 43072, 1732437630, 1, 0, 'bfa4a1325a8cb7641228efc0559ddc165b8a569e00d0843a9ab8ccb3eca0f493', '图像 342.webp', 'portal/20241124/3c9db61bccd85fe091883cd4379bae21.webp', 'bfa4a1325a8cb7641228efc0559ddc16', '0f75b6c5992fe8ef5fa0adc1517e29e68cb5a6d3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1252, 1, 40982, 1732437637, 1, 0, 'd003cf0a59d07d8d97ec4286510522dfb95ba4f0ab6ffe47518d4e65b9ed2158', '图像 268.webp', 'portal/20241124/bd3a0a74169ab7d7fb26b6a0e3bde9de.webp', 'd003cf0a59d07d8d97ec4286510522df', '2946a5d394ecb195351e3244c4c9ef542b04c462', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1253, 1, 40048, 1732437637, 1, 0, 'cfa4f8178948f8a56cf87ac9521375d32b84235a11ab1076cf8d999758a7a9d0', '图像 267.webp', 'portal/20241124/3f366ca8717bb94c99b3653380a6a45d.webp', 'cfa4f8178948f8a56cf87ac9521375d3', 'd9d333b5d68c717f2eb6c1b5182e4988a82aa32d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1254, 1, 57480, 1732437637, 1, 0, '3af64416eb754e9c2da5d5956fb558a7911ea6abf747bdfedd7930dc3d672955', '图像 269.webp', 'portal/20241124/bf335c48c90e0797d936fa5b8a75b0a4.webp', '3af64416eb754e9c2da5d5956fb558a7', '684ebd2a10b1d89465ed7075f9b8fbf89ed5f41e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1255, 1, 67144, 1732437642, 1, 0, '1afe22d8d7c769b117bebc48f2621f78ba25795fa661e6eb3eb3577a337632a1', '图像 348.webp', 'portal/20241124/63e5efad29a433283829f3d44d844f4a.webp', '1afe22d8d7c769b117bebc48f2621f78', '1a82d3edb2a6d99df6a61062d12b0c264d833397', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1256, 1, 39998, 1732437642, 1, 0, 'f104b79232cd2517ac3c7a864fc7982c67f13cf4bc9e6eb8d3f6515773059c62', '图像 349.webp', 'portal/20241124/f43e3857111ea87bab478e23b8f31347.webp', 'f104b79232cd2517ac3c7a864fc7982c', '293f9654e6e012ecdc36ebee102d6d86e9b745d7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1257, 1, 37894, 1732437644, 1, 0, '6cb152b9dee58d63b61d5b407f8f16a5e581d50737a961b43e3346453e736d1b', '图像 271.webp', 'portal/20241124/24f53c47ea00bcc323913d0a1be67fa7.webp', '6cb152b9dee58d63b61d5b407f8f16a5', '39ddf485941fb6ad7986eb836c439b069b43abfc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1258, 1, 43800, 1732437644, 1, 0, '73ee3db624b196c3982532bac625cf96eb822fe2a5158faa97097348d8944fea', '图像 272.webp', 'portal/20241124/015f0f501ab9c0bf03ba599d5a748d52.webp', '73ee3db624b196c3982532bac625cf96', '2463cad43fd25b6b6a541b0f43722fed1d14afa3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1259, 1, 8532, 1732437660, 1, 0, '03987d3028a73e2220d42922bc544b146436a2adb3e8d6ed7af4b631fe04ca69', '缩略图.webp', 'portal/20241124/fa8f0dd1ce870f00e4eb77e16726d07b.webp', '03987d3028a73e2220d42922bc544b14', 'b47888c9e778265b2e83e9b64ed2c1f56bb2453f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1260, 1, 37772, 1732437670, 1, 0, '2fac008bac64434ab1c9b05868736bf5a0ab64ce367e4b008a46cf1b7f5064ac', '图像 336.webp', 'portal/20241124/fa55b19f7393be23c8682f9b2938ad76.webp', '2fac008bac64434ab1c9b05868736bf5', '9ebc31a5cc4b9c0904387084f74e92f6c9855868', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1261, 1, 60192, 1732437676, 1, 0, 'e7db690f6bc4c9e57e962892fffaec100d16e8e2bcf24b710cd0abacbb840399', '图像 338.webp', 'portal/20241124/05e6d78d54adb11798309ea4ca4912d6.webp', 'e7db690f6bc4c9e57e962892fffaec10', '403c27f4028143a484fbd5f397f1d26327c3a85f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1262, 1, 10632, 1732437685, 1, 0, '9eb7f9451a7999ff1cc26d58261c570bfec024f2123644fd0413f9638f46ab83', '图像 342.webp', 'portal/20241124/5799bd709972b55c5c6dff85cbcaf31c.webp', '9eb7f9451a7999ff1cc26d58261c570b', 'eaa2dc29af4f6ea2c17fbdcb3b78f2ee11efafca', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1263, 1, 4836, 1732437715, 1, 0, 'ac31c2c43db9a98ce05263406d024aa51a2874aa8b2f5fe78a89fb3235cd82e3', '缩略图.webp', 'portal/20241124/c22943c03a66a758731f01da28ce2f7d.webp', 'ac31c2c43db9a98ce05263406d024aa5', 'c3cb8b0585c68e59666916d1761c6b1b8c1efc1e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1264, 1, 49994, 1732437721, 1, 0, '9556c28785a5695006835453d8355192f60c94896a4b72d136b6abd2edc85d36', '图像 255.webp', 'portal/20241124/2c79f1c2dcdf930b21db6c03c360c727.webp', '9556c28785a5695006835453d8355192', 'bc55727c9f319801140d01238f3e6113427ca673', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1265, 1, 53374, 1732437721, 1, 0, '60d90c215fae2868b75cbee6d9391824712fda1c5475ff4b577d138ea521a663', '图像 257.webp', 'portal/20241124/6429f3d1543099b19b819ea9dc4e2a84.webp', '60d90c215fae2868b75cbee6d9391824', 'c8ea3affb834cacddad288eccd4ae3b75fa78cb3', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1266, 1, 24304, 1732437721, 1, 0, '78463e11e8a9910748109c99f287bada3462d5bad164cf64913ba073006e09e5', '图像 256.webp', 'portal/20241124/106843ef8cbeed4a93ae2f0cf05ae593.webp', '78463e11e8a9910748109c99f287bada', '70ff4c7ba34c7c2e5cf31f60192dfdb28efee92e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1267, 1, 33874, 1732437721, 1, 0, 'b18b2ae46c4d66ae86f0c672245c32d71b36e8950dc2658d4d6c80d7b182ee2d', '图像 258.webp', 'portal/20241124/92d6f66026ff14581c3c7f027499ae03.webp', 'b18b2ae46c4d66ae86f0c672245c32d7', 'd316e06a1d340c200ea1e8641ee5bb38e8170849', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1268, 1, 28196, 1732437738, 1, 0, '1b1271906fa87d6198775fc7a8b599d552613ec42d061c7465c526b4bd122f48', '图像 262.webp', 'portal/20241124/6240a1c2af0a2e07693532d9a87273e2.webp', '1b1271906fa87d6198775fc7a8b599d5', '8ba484cb4c67539558c99c40890e9b2cac3b8b4d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1269, 1, 68614, 1732437738, 1, 0, '6e53ca3f3eb0758a4621455fd5da6af4d502700a6189e17fb1415b386b2f04fb', '图像 264.webp', 'portal/20241124/6470bcccc36f76a567a59f73f5c7fbaa.webp', '6e53ca3f3eb0758a4621455fd5da6af4', 'ebbff730f614998c108fefb6a4dcce94482c0799', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1270, 1, 4672, 1732437763, 1, 0, 'd5364e1ba626911c52288739353640364dd7627308ed08e261094f942304985c', '缩略图.webp', 'portal/20241124/1f8fab18d94b1b8a253ff18e9d289b3b.webp', 'd5364e1ba626911c5228873935364036', 'f0989b337ee0a0fbf0fc8235d4afc440135c4b12', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1271, 1, 46534, 1732437768, 1, 0, 'dbe13dd7680c82876c9fe6511a5578f26765c8cfa8d639c6a1ec7ceb99cb72e1', '图像 251.webp', 'portal/20241124/191d39401b769d89617b41de45ea14da.webp', 'dbe13dd7680c82876c9fe6511a5578f2', '97d2d3b64bf351dc8dcbdb64a11544a0b3277f76', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1272, 1, 33488, 1732437768, 1, 0, 'ab6e8ae4d72eef3b42d6e1ecc47e3c4dbba9f7b8b1e827e7983a2faf06e016fa', '图像 252.webp', 'portal/20241124/023f51c268c0b51db14a509c0b4ee263.webp', 'ab6e8ae4d72eef3b42d6e1ecc47e3c4d', '4c198e3f6748e1982a4ccf0033353611a0107c96', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1273, 1, 22096, 1732437768, 1, 0, 'b8275ddaf78df212302e4e4b31810ebe5e20a97aecb511923abdfa4aae4045c6', '图像 254.webp', 'portal/20241124/3bed9f58b32a3b825c236e87a8936259.webp', 'b8275ddaf78df212302e4e4b31810ebe', 'b17c1239731b2af8cb03659f32c9b0b819e23910', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1274, 1, 45352, 1732437769, 1, 0, '1cc9b85f1d47b15d1874024a074a0120024aec076bc03aeacfac6faa2db10564', '图像 255.webp', 'portal/20241124/f040f4d796c78b2e9f8c003b5037e358.webp', '1cc9b85f1d47b15d1874024a074a0120', '872d69ec1e236a9d54a1c227bc4fe427991589d6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1275, 1, 46726, 1732437782, 1, 0, 'a82e8b334ae108f084dcbec52d1972704d5a5f87330af908126826b0b98c997c', '图像 256.webp', 'portal/20241124/2ca2b51eb9b4eae0383be2d1862db55a.webp', 'a82e8b334ae108f084dcbec52d197270', 'dd9e751ea1ef045a3aa37bf3c7dfdda4e253e64f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1276, 1, 29746, 1732437782, 1, 0, 'de55ed01308158fe18232e07c89ba6d68ed5aff4c92bbf0cd39cc4a0f548e583', '图像 257.webp', 'portal/20241124/17eb6301a74a4d0f8e8e98c651116a9d.webp', 'de55ed01308158fe18232e07c89ba6d6', 'c9e7c5ba1cf0f0871a6704650cbc9ea21890239e', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1277, 1, 7790, 1732437805, 1, 0, '7e6e2bf1e0cd1769b209e6d9f393e19a74252cd44ecfccb4d1a1093eb6ba261a', '缩略图.webp', 'portal/20241124/6b4a12bd8eb242da6c27e83c065554f6.webp', '7e6e2bf1e0cd1769b209e6d9f393e19a', 'ef0bf15ccc552c7b6e9811af6b70bb076452cdea', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1278, 1, 38160, 1732437811, 1, 0, '284e90b56bf2e7b769bfabdd5feeff07707c2734ce83b629a9157a13aea6db81', '图像 242.webp', 'portal/20241124/2c9636e1fde42de048f70c908292c3b5.webp', '284e90b56bf2e7b769bfabdd5feeff07', '5b3929f883221c6e698aa7017f664baf890ba3e8', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1279, 1, 52856, 1732437811, 1, 0, 'd30dbe9419a10e2abcc69670546c4be2e77dc6af0650913e461247fc8741dfee', '图像 243.webp', 'portal/20241124/2da9f2d9dc8add4a2544a71656c30a5f.webp', 'd30dbe9419a10e2abcc69670546c4be2', '83fd3ba7ca636ebbc9c22d42edcb08fe309ff3a6', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1280, 1, 40264, 1732437811, 1, 0, '586c5e757414a17ecc9433de427f1cf82155785434d470fcb9e16699dfb03544', '图像 244.webp', 'portal/20241124/2548b34b3c2c44f01d68e9699b947ab3.webp', '586c5e757414a17ecc9433de427f1cf8', 'f59b3e4b895e0e3cd3cdc036be2536792aba8d79', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1281, 1, 42564, 1732437811, 1, 0, '7ff90862a229072a2e2b558002a041e3f035a9e9e76f021f0d0cef805a1c1899', '图像 245.webp', 'portal/20241124/e678e0f79f93d1486aa2cb10ca20b54c.webp', '7ff90862a229072a2e2b558002a041e3', '0407b4b1e42dc33facd28cc37efe339a225d6e89', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1282, 1, 58294, 1732437824, 1, 0, 'ce0c5df4f5bdabac73f42c128bf8d2f5114f25287e4a655116f885b1932e051c', '图像 251.webp', 'portal/20241124/f5dd4bddec37996e72be70e8da894560.webp', 'ce0c5df4f5bdabac73f42c128bf8d2f5', '3c31095fb43f2c82e1b04db75644aff13cbae41c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1283, 1, 32266, 1732437824, 1, 0, '5f7c61f561909271177bf2a37b0f6efb7a7f9e8acde3fde1a855cafa52acffa1', '图像 252.webp', 'portal/20241124/b3fceaa5ffbf589279e520fa07a9dcf6.webp', '5f7c61f561909271177bf2a37b0f6efb', 'bb76610a6ec7407739eae6ef77441c277b50610d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1284, 1, 6262, 1732437829, 1, 0, '5987f06e66cbb9d06831f141ae865bb00393f48cea11361c70221833d0ca1832', '缩略图.webp', 'portal/20241124/7791fc9c1ead95f5745038a0f2982406.webp', '5987f06e66cbb9d06831f141ae865bb0', '08aaf2a3a31be34a56436639049754b25178b13a', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1285, 1, 66762, 1732437836, 1, 0, '4e06a350f039f0a6d87156bee3dcb5e7e2c9fe81c09b3aae8a567b8a65eca93f', '图像 306.webp', 'portal/20241124/f7b5c6c3e04e42980bef205ecc412918.webp', '4e06a350f039f0a6d87156bee3dcb5e7', '9627457d5892ea567289aa40bb9fdbfb538fc2ad', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1286, 1, 90424, 1732437836, 1, 0, '5db1bd3ccfe6f7f71366976602b7268f0884aa9807cb02099a0876a81bb61693', '图像 327.webp', 'portal/20241124/acfb104ac16a0e9efd35f38da90d0ae8.webp', '5db1bd3ccfe6f7f71366976602b7268f', 'fa0e5d47d9cdd7e5eaa1ad251de341b72012652f', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1287, 1, 34524, 1732437836, 1, 0, 'ebe030eff5b7db4b631efa996dd5f004998370322b96d01e41f58b23ce0203b6', '图像 328.webp', 'portal/20241124/44929b6386877e5cfc8ae1d80fb12618.webp', 'ebe030eff5b7db4b631efa996dd5f004', '388d309ccffbfd2221a0f6daad6e6fac9f9f9e2d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1288, 1, 46862, 1732437836, 1, 0, '74b1a106373f76408f07372fc7b7bad7e2bb169fb2566baef74f524c4d6220a0', '图像 318.webp', 'portal/20241124/b01c5dc2d83e18f708a6562dfc0743cd.webp', '74b1a106373f76408f07372fc7b7bad7', '331aafff3b817441d278a7b460cc57965d05a327', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1289, 1, 84516, 1732437846, 1, 0, '1003df15a9e90ab7ce80f3a8195dc7ef5aa9437d8898e304c617a95c9373e65a', '图像 338.webp', 'portal/20241124/4f1a237d5443102c941718675901dc03.webp', '1003df15a9e90ab7ce80f3a8195dc7ef', '03a9f1e24d46e160fb51526f2b427ef20d8d19c2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1290, 1, 64650, 1732437846, 1, 0, '144a303930af63120e5687081cf4d4553ff305516942640cc14badb422765644', '图像 337.webp', 'portal/20241124/462fa0034bd09b04df1cee152b492a60.webp', '144a303930af63120e5687081cf4d455', '7f4e46d6cca4e8bc3e8bc5e03546c389fc6e230b', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1291, 1, 8082, 1732437887, 1, 0, 'bcef13707cf0012ecad844c79853de99b9228a0af7c05abff27c1bb8e149c58e', '缩略图.webp', 'portal/20241124/1e55c3932ed85242c457be2cfd4277c8.webp', 'bcef13707cf0012ecad844c79853de99', '66482d04948630f04f88bbc60cc5dc0892440b37', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1292, 1, 89268, 1732437894, 1, 0, '7311afb8294f4ebfb24dea784fa4b62eeaf62bcafb8ee9161ae0f6a3788f8b74', '图像 316.webp', 'portal/20241124/f0607e66586849848fa4d91d694c4540.webp', '7311afb8294f4ebfb24dea784fa4b62e', 'cd6e596f00b2dbfdda8d7f93711f1829b6eef0d7', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1293, 1, 37812, 1732437894, 1, 0, 'dd9e9b2baec11740cad7050b7f59f095df2ec2f1aa91c2c51ffaf9458a72350b', '图像 319.webp', 'portal/20241124/de420bc22827bded5cfe91bfce198271.webp', 'dd9e9b2baec11740cad7050b7f59f095', '5cea7fe02ef8154a111a047599d796ac77deded1', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1294, 1, 19252, 1732437900, 1, 0, '51dad2e515d2339c171068c9c797e7cf9c90b644ae0196fa88db78ca6775ca1b', '图像 314.webp', 'portal/20241124/cdcb47d58846c3a08fb6dd56556f73ce.webp', '51dad2e515d2339c171068c9c797e7cf', 'bfc7b3028c43e1b22e28a076fb0f31cb48ffcdfa', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1295, 1, 53502, 1732437917, 1, 0, 'b39bdb12ac20561f758965493209513439189855cd848a1659e08751edc945a9', '图像 324.webp', 'portal/20241124/5fd7c44051e87353b1635df739db471b.webp', 'b39bdb12ac20561f7589654932095134', '98b8a8b0ff381abb579b344fe22bf039c7172d19', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1296, 1, 49260, 1732437917, 1, 0, '3d2fe9a2325f4cf4e79390466afa19fe891f8cb987ff5b98a70e41024607c2ba', '图像 325.webp', 'portal/20241124/7026c3b4b2be7a06a52acff49396c1b4.webp', '3d2fe9a2325f4cf4e79390466afa19fe', '0121cc72abaa7e35e4eadfbdd1bc5050acd79f04', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1297, 1, 4352, 1732437937, 1, 0, '4b4b82eafd4b3549700b0f51fbb14904c28242e694772cb28707881b28096933', '缩略图.webp', 'portal/20241124/43f6348a3473c499ee3cc628be642fec.webp', '4b4b82eafd4b3549700b0f51fbb14904', '2b55c81e840d6712264b8d4e036a9aafccb74f4c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1298, 1, 29578, 1732437944, 1, 0, '7a4becd05ea6d156cd294846fe6611cc5d41b6c133177d4f50de8b819350e8ce', '图像 304.webp', 'portal/20241124/c6fa97e0e75c544fd5dc1673bcecd328.webp', '7a4becd05ea6d156cd294846fe6611cc', '64767e3b957049927712c20add4813e3da905333', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1299, 1, 88352, 1732437944, 1, 0, '355ac634c435e27fa2623eb71060c2335a32807d67cbe4045ad9b8efd8decc10', '图像 305.webp', 'portal/20241124/2132ac8cd283e480f34d88a1a9f39758.webp', '355ac634c435e27fa2623eb71060c233', '2efef324e938d89baf02145e2fc6a5c85d418c10', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1300, 1, 52388, 1732437953, 1, 0, '7ffb38ae02bf2272b82a117b408282c3110d5674e5e7def3ab1945659b2a7d42', '图像 316.webp', 'portal/20241124/6d9450875221e3721f4d656e598d1be3.webp', '7ffb38ae02bf2272b82a117b408282c3', '1c0f70a19127c07167af3e5a5a109688739ae01d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1301, 1, 5624, 1732437971, 1, 0, '694b2d6036cc98d75bb1fc1835bf088155d023fcb29a0f74690aa49d779e70e1', '缩略图.webp', 'portal/20241124/97d5021f63241ddf6fd345798b1d6fe0.webp', '694b2d6036cc98d75bb1fc1835bf0881', '195b47d51ef521bb681f3269cfaec0f832fec47d', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1302, 1, 30336, 1732437979, 1, 0, '01bea6e354f610ba66617e56679f1617856e432a87cd799b4347c13d71fef6d4', '图像 302.webp', 'portal/20241124/d61a80ee3c1cab328c843321504d7ccd.webp', '01bea6e354f610ba66617e56679f1617', 'f1cccc845a5d386298eb7fff38ad020c3a3c9abf', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1303, 1, 30674, 1732437979, 1, 0, 'e3f172eb290a85d7a4ebb5d4a4c0d9894964635d2ba1e1ce14343a750e2bd664', '图像 296.webp', 'portal/20241124/fae967f78c355b41c363bfe63797ba1b.webp', 'e3f172eb290a85d7a4ebb5d4a4c0d989', 'f0e2cb7c76326ec9cac73ca466ed12c4792d4706', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1304, 1, 39576, 1732437979, 1, 0, '2be3aac12edd2fe112f781d36ed6262b83f34bc3f878ad5bc4fcd771a39ca896', '图像 297.webp', 'portal/20241124/59c714620be20d05f11c54af9a73e6a2.webp', '2be3aac12edd2fe112f781d36ed6262b', 'dd89bf2d385d043be982217562264b8f619b76dc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1305, 1, 37644, 1732437979, 1, 0, 'e184a8fddcec1aaacf396c3890d0df188b0e625e2cf96568d5ed0fff4d6a0688', '图像 298.webp', 'portal/20241124/fde53e59beabb3b0050fd055b775d7c5.webp', 'e184a8fddcec1aaacf396c3890d0df18', 'fcc65f51b6399e503f500d6f9be4f1a9b241e7d4', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1306, 1, 11208, 1732437988, 1, 0, 'eeb2ae3e007abdf861ba2e7f6d74220ced33657a592f968c571c58dee7de3cd1', '图像 301.webp', 'portal/20241124/b4195b4458308d22521ac14e79380642.webp', 'eeb2ae3e007abdf861ba2e7f6d74220c', 'db7f01176dc5e50403289f36fa4c5336e4c5b3cc', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1308, 1, 533742, 1732440929, 1, 0, '0348806a2852c275ee12fd9a924a7c86d3d3de517e53f8c075dba2c600a20e24', 'Mine crane company in Henan.pdf', 'portal/20241124/f34265e8c9de4e2c13949dda70f0cc15.pdf', '0348806a2852c275ee12fd9a924a7c86', '58b88deb8cb9f609922834fdabd3dd1f17b04083', 'pdf', NULL);
INSERT INTO `cmf_asset` VALUES (1309, 1, 7131278, 1732440951, 1, 0, '600ea8313a690ff37d24c4d4571228a1f0de11138ce23bfd279d9a099742c6d5', 'Henan Mine Crane catalogue.pdf', 'portal/20241124/6d9c566aeac6a913c131d53e1f702414.pdf', '600ea8313a690ff37d24c4d4571228a1', 'b40c6d4f32f7135aea51b99cc27d4d39dc1d0254', 'pdf', NULL);
INSERT INTO `cmf_asset` VALUES (1310, 1, 7664112, 1732441020, 1, 0, '147981bbfd43353c62ae7d52d292bad35022bd60ced99c6f4caed32198ffa960', 'HENAN CRANE.pdf', 'admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf', '147981bbfd43353c62ae7d52d292bad3', '9c9694862dfcc549bb9355072e6380cc8f56a2a9', 'pdf', NULL);
INSERT INTO `cmf_asset` VALUES (1311, 1, 76170, 1732515696, 1, 0, 'e934bd2551bb6bcff57263c5277ebfe273f71db44436898b325872dcb55c1f1a', 'XG2.webp', 'portal/20241125/b1483588460e375173757a09a7558293.webp', 'e934bd2551bb6bcff57263c5277ebfe2', '1f466f00f3a4c7006f8aa85dd2ef2b92790d5dd2', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1312, 1, 45732, 1732515710, 1, 0, '1ab138be39666a4e010c5e1521df24633c4920d644594138df2cefc730abfdcd', '洁净防爆.webp', 'portal/20241125/1248abe359d1ce1f5118af4e8ef66c51.webp', '1ab138be39666a4e010c5e1521df2463', '44bb14f80984a58d8904ae98d5b47360b9c2561c', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1313, 1, 99926, 1732515756, 1, 0, 'b116257fc269f8b85ee945dadd2e0ceb71e5bd67f121f8cd386f652049d33543', '西安铁路机车检修.webp', 'portal/20241125/1c1f1a4d5f15a568887930dc35c9c9fa.webp', 'b116257fc269f8b85ee945dadd2e0ceb', '1ec13500ac8da95142c8364f715be27dfd3bc4bd', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1314, 1, 77182, 1732515772, 1, 0, '9f16bbe80325ab68d354a4f2d2768eed17fa63bdeca850a788911f0f40ddf001', '巴基斯坦轨道.webp', 'portal/20241125/82f9bf0f6eee70cadf1c2557f55665d1.webp', '9f16bbe80325ab68d354a4f2d2768eed', '9bbe425d32a23f9a9610f5ce5b3d7e1b00a741d5', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1315, 1, 77372, 1732515786, 1, 0, '60a7a1aa76edd31ea5422419ff5ac85650329c71a860c01f9662dcaf77e83e13', '蒜冷藏仓储.webp', 'portal/20241125/ac6c0fc3c4fe7ffc37aae55b720c5355.webp', '60a7a1aa76edd31ea5422419ff5ac856', 'dc32700848e19e1e16b3b59f33890335219df252', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1316, 1, 47772, 1732515798, 1, 0, '488a4686ecef03df96dfab705f57362c6d6969c69e552aa5be3f17174cf62eda', '兰州国际港务.webp', 'portal/20241125/2e32c19ebae2f33a89d79653afd47507.webp', '488a4686ecef03df96dfab705f57362c', '3c1eba6767e4179d60bdeba49dcd1729b8bf9dee', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1317, 1, 76260, 1732515834, 1, 0, 'c681d70681e4d97e685ffd73fbc01911973fc36d4aad1c01e2be9e294e451573', '宝钢湛江.webp', 'portal/20241125/c2c479d6327dbd13b972719e1774f199.webp', 'c681d70681e4d97e685ffd73fbc01911', '04546c9f4523726f7f47b713f17e830880dffcff', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1318, 1, 87100, 1732515847, 1, 0, '6457e04906c4e4c0c16eb0779845baf86443cc18f4212876313e323a60a04079', '山东钢铁日照.webp', 'portal/20241125/14cf7241ae8738bd703240974fb40f16.webp', '6457e04906c4e4c0c16eb0779845baf8', 'c0436af2645091a9a44c0959abbed6ac2338b783', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1319, 1, 77942, 1732515864, 1, 0, 'd753d046e522fd5a7a532c1b14ef69f0d624146480503ddd12774d9943ac75ab', '无人化抓斗3.webp', 'portal/20241125/581ea65f41ced45d6336a6142ca5e94d.webp', 'd753d046e522fd5a7a532c1b14ef69f0', '22dedc9b1792b1aa66b73312b66332d044c2e284', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1320, 1, 65196, 1732515890, 1, 0, '1cfb8fba187e3178e0dd190ccac5b67c9e1011f155552495db00f34856655380', '智能焦罐23.webp', 'portal/20241125/7f6152ef12e5a8a5824ac15bdef9f4fd.webp', '1cfb8fba187e3178e0dd190ccac5b67c', '94efa7ec18ddc6ec2047c527bea6e1b0ff54b583', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1321, 1, 81634, 1732515913, 1, 0, '6fd97ebe98608d0a8f3c652c160410c0590466457176fbf7c26b0588bca4dd1a', '攀华集团智能化热轧10.webp', 'portal/20241125/cfbe1dd33549b0b41879801961c2f6a7.webp', '6fd97ebe98608d0a8f3c652c160410c0', '791d6e4be3a67dc6f0fcaba3fab1942748c13d54', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1322, 1, 57634, 1732515926, 1, 0, '33eeee53c05f8300c41de7adc1e578d129d1e838e9a26ec5b902e6500e960f5f', '越南宜山钢铁2.webp', 'portal/20241125/41843a2a860e11fa919f4e5c2be346e3.webp', '33eeee53c05f8300c41de7adc1e578d1', '4aa4256c3aacd65599178dc29baa3dd5ba7cf5de', 'webp', NULL);
INSERT INTO `cmf_asset` VALUES (1323, 1, 30439723, 1732518877, 1, 0, 'baf4b32a7768cbd3111a4c0e18b392f0a08858790b1ad308ed6ed9d2d68f6a09', '视频.mp4', 'portal/20241125/af5a6df7fdd86a34f9371a091b7db178.mp4', 'baf4b32a7768cbd3111a4c0e18b392f0', 'cbb14de41aeca56fdc2b1056cdacc9c189882f82', 'mp4', NULL);
INSERT INTO `cmf_asset` VALUES (1324, 1, 584022, 1732518885, 1, 0, '4608dca7a133d5e28ad0837343d126112f89fcd67fe8b6dd84ac371e7095a18a', '河南矿山宣传片.png', 'portal/20241125/c3fd1c06669f48d0f360e342d0fc1fa5.png', '4608dca7a133d5e28ad0837343d12611', 'e7a59222b1ef83f58a1606efb14ffe6925ede222', 'png', NULL);

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `module`(`app`, `status`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '应用中心', '');
INSERT INTO `cmf_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (120, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES (121, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES (122, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (123, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES (124, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES (125, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES (126, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES (127, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES (128, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES (129, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES (130, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (131, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES (132, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (162, 1, 'admin', 'admin_url', 'admin/Api/import', '', '后台API导入', '');
INSERT INTO `cmf_auth_rule` VALUES (163, 1, 'admin', 'admin_url', 'admin/App/index', '', '应用管理', '');
INSERT INTO `cmf_auth_rule` VALUES (164, 1, 'admin', 'admin_url', 'admin/App/install', '', '应用安装', '');
INSERT INTO `cmf_auth_rule` VALUES (165, 1, 'admin', 'admin_url', 'admin/App/update', '', '应用更新', '');
INSERT INTO `cmf_auth_rule` VALUES (166, 1, 'admin', 'admin_url', 'admin/App/uninstall', '', '卸载应用', '');
INSERT INTO `cmf_auth_rule` VALUES (167, 1, 'admin', 'admin_url', 'admin/App/uninstallPost', '', '卸载应用提交', '');
INSERT INTO `cmf_auth_rule` VALUES (168, 1, 'admin', 'admin_url', 'admin/Dev/index', '', '开发面板', '');
INSERT INTO `cmf_auth_rule` VALUES (169, 1, 'admin', 'admin_url', 'admin/Plugin/hooks', '', '插件钩子', '');
INSERT INTO `cmf_auth_rule` VALUES (170, 1, 'admin', 'admin_url', 'admin/Rbac/apiAuthorize', '', '设置角色后台API权限', '');
INSERT INTO `cmf_auth_rule` VALUES (171, 1, 'admin', 'admin_url', 'admin/Rbac/apiAuthorizePost', '', '设置角色后台API权限提交', '');
INSERT INTO `cmf_auth_rule` VALUES (172, 1, 'admin', 'admin_url', 'admin/RecycleBin/clear', '', '清空回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (173, 1, 'admin', 'admin_url', 'admin/Theme/widgetsSort', '', '自由模板控件排序', '');
INSERT INTO `cmf_auth_rule` VALUES (174, 1, 'admin', 'admin_url', 'admin/Theme/widgetSetting', '', '模板自由控件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (175, 1, 'admin', 'admin_url', 'admin/Theme/widgetSettingPost', '', '模板自由控件设置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (176, 1, 'admin', 'admin_url', 'admin/User/emailSetting', '', '我的邮箱设置', '');
INSERT INTO `cmf_auth_rule` VALUES (177, 1, 'admin', 'admin_url', 'admin/User/emailSettingPost', '', '我的邮箱设置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (178, 1, 'admin', 'admin_url', 'admin/User/emailSettingTest', '', '我的邮箱设置测试', '');
INSERT INTO `cmf_auth_rule` VALUES (179, 1, 'admin', 'admin_url', 'admin/AppStore/apps', '', '应用市场', '');
INSERT INTO `cmf_auth_rule` VALUES (180, 1, 'admin', 'admin_url', 'admin/AppStore/plugins', '', '插件市场', '');
INSERT INTO `cmf_auth_rule` VALUES (181, 1, 'admin', 'admin_url', 'admin/AppStore/themes', '', '模板市场', '');
INSERT INTO `cmf_auth_rule` VALUES (182, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES (183, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES (184, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES (185, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES (186, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES (187, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES (188, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES (189, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES (190, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (191, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES (192, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES (193, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (194, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES (195, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (196, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES (197, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES (198, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES (199, 1, 'portal', 'admin_url', 'portal/AdminCategory/toggle', '', '文章分类显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (200, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (201, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES (202, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES (203, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES (204, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES (205, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES (206, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES (207, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES (208, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (209, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (210, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES (211, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES (212, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (213, 1, 'portal', 'admin_url', 'portal/adminProduct/default', '', '产品管理', '');
INSERT INTO `cmf_auth_rule` VALUES (214, 1, 'portal', 'admin_url', 'portal/adminProductCategory/index', '', '产品分类', '');
INSERT INTO `cmf_auth_rule` VALUES (215, 1, 'portal', 'admin_url', 'portal/adminProduct/index', '', '产品列表', '');
INSERT INTO `cmf_auth_rule` VALUES (216, 1, 'admin', 'admin_url', 'admin/message/index', '', '留言列表', '');
INSERT INTO `cmf_auth_rule` VALUES (217, 1, 'portal', 'admin_url', 'portal/AdminProfession/index', '', '行业标签', '');
INSERT INTO `cmf_auth_rule` VALUES (218, 1, 'portal', 'admin_url', 'portal/AdminCase/default', '', '案例管理', '');
INSERT INTO `cmf_auth_rule` VALUES (219, 1, 'portal', 'admin_url', 'portal/AdminCaseCategory/index', '', '案例分类', '');
INSERT INTO `cmf_auth_rule` VALUES (220, 1, 'portal', 'admin_url', 'portal/AdminCase/index', '', '案例列表', '');
INSERT INTO `cmf_auth_rule` VALUES (221, 1, 'portal', 'admin_url', 'portal/AdminVideo/default', '', '视频管理', '');
INSERT INTO `cmf_auth_rule` VALUES (222, 1, 'portal', 'admin_url', 'portal/AdminVideoCategory/index', '', '视频分类', '');
INSERT INTO `cmf_auth_rule` VALUES (223, 1, 'portal', 'admin_url', 'portal/AdminVideo/index', '', '视频管理', '');
INSERT INTO `cmf_auth_rule` VALUES (224, 1, 'portal', 'admin_url', 'portal/AdminFile/index', '', '下载中心', '');
INSERT INTO `cmf_auth_rule` VALUES (225, 1, 'portal', 'admin_url', 'portal/AdminAbout/default', '', '关于我们', '');
INSERT INTO `cmf_auth_rule` VALUES (226, 1, 'portal', 'admin_url', 'portal/AdminAboutCategory/index', '', '分类列表', '');
INSERT INTO `cmf_auth_rule` VALUES (227, 1, 'portal', 'admin_url', 'portal/AdminAbout/index', '', '文章列表', '');

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被回复的评论id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表评论的用户id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被评论的用户id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论内容 id',
  `like_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `dislike_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '不喜欢数',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '楼层数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `table_id_status`(`table_name`, `object_id`, `status`) USING BTREE,
  INDEX `object_id`(`object_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_demo_migration
-- ----------------------------
DROP TABLE IF EXISTS `cmf_demo_migration`;
CREATE TABLE `cmf_demo_migration`  (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_demo_migration
-- ----------------------------
INSERT INTO `cmf_demo_migration` VALUES (20220516230950, 'MigrationAppDemoTest', '2024-10-30 14:37:50', '2024-10-30 14:37:51', 0);

-- ----------------------------
-- Table structure for cmf_demo_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_demo_user`;
CREATE TABLE `cmf_demo_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` smallint(6) NOT NULL DEFAULT 1 COMMENT '状态;0:禁用;1:启用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'demo应用用户表，用于演示应用用户表扩展' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_demo_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES (36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES (37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES (38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES (39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES (40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES (41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES (42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES (43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES (44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES (49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES (50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES (51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES (52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES (53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES (54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES (55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES (64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES (65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES (66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES (67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES (68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES (69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES (70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES (71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');
INSERT INTO `cmf_hook` VALUES (72, 2, 1, '后台API导入界面', 'admin_api_import_view', 'admin', '后台API导入界面');
INSERT INTO `cmf_hook` VALUES (73, 2, 1, '第三方验证码检测', 'check_third_party_captcha', 'user', '第三方验证码检测');
INSERT INTO `cmf_hook` VALUES (74, 1, 1, '用户登录前钩子', 'user_login_start', 'user', '用户登录前钩子');
INSERT INTO `cmf_hook` VALUES (75, 2, 0, '演示钩子', 'demo_hook_test', 'demo', '演示钩子');
INSERT INTO `cmf_hook` VALUES (76, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES (77, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES (78, 2, 1, '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面');
INSERT INTO `cmf_hook` VALUES (79, 2, 1, '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面');
INSERT INTO `cmf_hook` VALUES (80, 2, 1, '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面');
INSERT INTO `cmf_hook` VALUES (81, 2, 1, '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面');
INSERT INTO `cmf_hook` VALUES (82, 2, 1, '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面');
INSERT INTO `cmf_hook` VALUES (83, 2, 1, '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面');
INSERT INTO `cmf_hook` VALUES (84, 2, 1, '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面');
INSERT INTO `cmf_hook` VALUES (85, 2, 1, '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面');
INSERT INTO `cmf_hook` VALUES (86, 2, 1, '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面');
INSERT INTO `cmf_hook` VALUES (87, 2, 1, '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面');
INSERT INTO `cmf_hook` VALUES (88, 4, 0, '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏');
INSERT INTO `cmf_hook` VALUES (89, 4, 0, '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT 0 COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES (1, 1, 1, 8, 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for cmf_message
-- ----------------------------
DROP TABLE IF EXISTS `cmf_message`;
CREATE TABLE `cmf_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ip',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '产品id',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品缩略图',
  `lifting_capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '起重量',
  `lifting_height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '起重高度',
  `span` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跨度',
  `operating_voltage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作电压',
  `operating_herts` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '赫兹',
  `job_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作等级',
  `sling_available` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '可配吊具',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号/WhatsApp',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `content` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '留言内容',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '反馈类型：1产品详情提交，2其他提交',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_message
-- ----------------------------
INSERT INTO `cmf_message` VALUES (2, '', 29, NULL, NULL, NULL, '1,25.2', '1,47', '1V', '50Hz', NULL, NULL, '1', '1', '846413979@qq.com', '', 1, 1731554362, NULL);
INSERT INTO `cmf_message` VALUES (3, '', 29, NULL, NULL, NULL, '1,25.2', '1,47', '1V', '50Hz', NULL, NULL, '1', '1', '846413979@qq.com', '', 1, 1731555111, NULL);
INSERT INTO `cmf_message` VALUES (4, '', 29, NULL, NULL, NULL, '1,25.2', '1,47', '1V', '50Hz', NULL, NULL, '1', '1', '846413979@qq.com', '', 1, 1731555120, NULL);
INSERT INTO `cmf_message` VALUES (5, '', 29, NULL, NULL, NULL, '1,25.2', '1,47', '1V', '50Hz', NULL, NULL, '1', '1', '846413979@qq.com', '', 1, 1731555212, NULL);
INSERT INTO `cmf_message` VALUES (6, '', 29, NULL, NULL, NULL, '1,25.2', '1,47', '1V', '50Hz', NULL, NULL, '1', '1', '846413979@qq.com', '', 1, 1731555234, NULL);
INSERT INTO `cmf_message` VALUES (7, '', 29, NULL, NULL, NULL, '1,25.2', '1,47', '1V', '50Hz', NULL, NULL, '1', '1', '846413979@qq.com', '', 1, 1731555244, NULL);
INSERT INTO `cmf_message` VALUES (8, '', 5, 'Grab Single Girder Overhead Crane', 'portal/20241113/c471715cd7b9b02fa251232078248d04.png', '[\"5t\"]', '8.8,18', '10.6,22.5', '5V', '60Hz', '[\"A3\"]', '[{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '1', '1', '846413979@qq.com', '', 1, 1731556204, NULL);
INSERT INTO `cmf_message` VALUES (9, '127.0.0.1', 5, 'Grab Single Girder Overhead Crane', 'portal/20241113/c471715cd7b9b02fa251232078248d04.png', '[\"5t\"]', '8.8,18', '10.6,22.5', '5V', '60Hz', '[\"A3\"]', '[{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '1', '1', '846413979@qq.com', '', 1, 1731556481, NULL);
INSERT INTO `cmf_message` VALUES (10, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '846413979@qq.com', '', 2, 1731578213, NULL);
INSERT INTO `cmf_message` VALUES (11, '127.0.0.1', 9, 'Hook Double Girder Overhead Crane', 'portal/20241113/64f758171940ac80262e4df4806e72b6.png', '[\"5t\"]', '16,40', '10.5,31.5', '380V', '50Hz', '[\"A1\"]', NULL, '1', '1', '846413979@qq.com', '', 1, 1731578232, NULL);
INSERT INTO `cmf_message` VALUES (12, '192.168.0.41', 6, 'Suspension Single Girder Overhead Crane', 'portal/20241113/cbba3f14db00442ae98a8f8233224ba2.png', '[\"0.5t\"]', '6,18', '3,16', '380V', '50Hz', '[\"A3\"]', NULL, 'Classic case', '18888888888', '1@5185.com', '156451625+56412', 1, 1731660533, NULL);
INSERT INTO `cmf_message` VALUES (13, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '846413979@qq.com', '', 3, 1731987835, NULL);
INSERT INTO `cmf_message` VALUES (14, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '846413979@qq.com', '', 3, 1731988390, NULL);
INSERT INTO `cmf_message` VALUES (15, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '846413979@qq.com', '123123', 2, 1732001571, NULL);
INSERT INTO `cmf_message` VALUES (16, '192.168.0.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Classic case', '18888888888', '1@5185.com', '265456525875+96', 2, 1732003116, NULL);
INSERT INTO `cmf_message` VALUES (17, '192.168.0.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Classic case', '18888888888', '1@5185.com', '265456525875+96', 2, 1732003124, NULL);
INSERT INTO `cmf_message` VALUES (18, '192.168.0.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Transport', '18888888888', '1@5185.com', '156413265', 2, 1732239021, NULL);
INSERT INTO `cmf_message` VALUES (19, '192.168.0.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Transport', '18888888888', '1@5185.com', '48574651364234985', 3, 1732239432, NULL);
INSERT INTO `cmf_message` VALUES (20, '127.0.0.1', 22, 'Flexible Crane', 'portal/20241124/c79b86fc71324a28dfef9c3d41e2c8d9.webp', '[\"0.15t\"]', '0,30', '1,31.5', '380V', '50Hz', '[\"A3\"]', NULL, '1', '1', '846413979@qq.com', '123', 1, 1732437977, NULL);
INSERT INTO `cmf_message` VALUES (21, '127.0.0.1', 13, 'Double Trolley Hook Overhead Crane', 'portal/20241124/2b47a091f87850787a2eb4b47f7ce7ae.webp', '[\"10t\"]', '0,16', '10.5,31.5', '380V', '50Hz', '[\"A4\"]', NULL, 'PublicCulturalServices', '1', '846413979@qq.com', '', 1, 1732440714, NULL);
INSERT INTO `cmf_message` VALUES (22, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PublicCulturalServices', '1', '846413979@qq.com', '', 3, 1732441134, NULL);
INSERT INTO `cmf_message` VALUES (23, '127.0.0.1', 10, 'Grab Double Girder Overhead Crane', 'portal/20241124/8b975f235cacf9f1999861f43af3852c.webp', '[\"5t\"]', '0,26', '10.5,31.5', '380V', '50Hz', '[\"A6\"]', NULL, '1', '1', '846413979@qq.com', '阿斯蒂芬', 1, 1732691626, NULL);
INSERT INTO `cmf_message` VALUES (24, '127.0.0.1', 10, 'Grab Double Girder Overhead Crane', 'portal/20241124/8b975f235cacf9f1999861f43af3852c.webp', '[\"5t\"]', '0,26', '10.5,31.5', '380V', '50Hz', '[\"A6\"]', NULL, ' 桥式起重机', '1', '846413979@qq.com', '', 1, 1732691751, NULL);

-- ----------------------------
-- Table structure for cmf_migration
-- ----------------------------
DROP TABLE IF EXISTS `cmf_migration`;
CREATE TABLE `cmf_migration`  (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_migration
-- ----------------------------
INSERT INTO `cmf_migration` VALUES (20230320162718, 'MigrationCmfRoleType', '2024-10-30 14:20:18', '2024-10-30 14:20:18', 0);
INSERT INTO `cmf_migration` VALUES (20230322153218, 'MigrationCmfAdminApi', '2024-10-30 14:20:18', '2024-10-30 14:20:18', 0);

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航位置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES (1, 1, '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES (2, 0, '底部导航', '');

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES (1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '全站配置表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"HENAN MINE CRANE IM&amp;EX CO.,LTD\",\"site_seo_title\":\"HENAN MINE CRANE IM&amp;EX CO.,LTD\",\"site_seo_keywords\":\"HENAN MINE CRANE IM&amp;EX CO.,LTD\",\"site_seo_description\":\"HENAN MINE CRANE IM&amp;EX CO.,LTD\",\"sale_tel\":\"+86-0373-3088011\",\"after_sale_tel\":\"+86-0373-3088011\",\"site_gwa\":\"豫ICP备16003949号-1\",\"copyright\":\"Copyright©HENAN MINE CRANE IM&amp;EX CO.,LTD\",\"site_analytics\":\"\",\"email\":\"info@hukscrane.com\",\"whatsapp\":\"+86 16696663259\",\"wechat\":\"+86 16696663259\",\"salesiq\":\"&lt;script&gt;window.$zoho=window.$zoho || {};$zoho.salesiq=$zoho.salesiq||{ready:function(){}}&lt;\\/script&gt;&lt;script id=&quot;zsiqscript&quot; src=&quot;https:\\/\\/salesiq.zohopublic.com.cn\\/widget?wc=siqe3c9e9179d93d2196d1015e4a10683be24021e2092df3d7c882cc9add882d190&quot; defer&gt;&lt;\\/script&gt;\"}');
INSERT INTO `cmf_option` VALUES (2, 1, 'appstore_settings', '{\"access_token\":\"5521b8bea6d7df3a70eed05ddeaec4d6b641aca294c77ac5ce3bb2d9ff05a33d\"}');
INSERT INTO `cmf_option` VALUES (3, 1, 'app_manifest_demo', '{\"title\":\"演示应用\",\"name\":\"demo\",\"version\":\"1.0.3\",\"demo_url\":\"http:\\/\\/demo.thinkcmf.com\",\"author\":\"ThinkCMF\",\"author_url\":\"http:\\/\\/www.thinkcmf.com\",\"keywords\":\"ThinkCMF 演示应用\",\"description\":\"ThinkCMF 演示应用\",\"\\/*config_url\":\"controller\\/action,如:AdminIndex\\/setting,默认为空，表示没设置*\\/\",\"config_url\":\"\"}');
INSERT INTO `cmf_option` VALUES (4, 1, 'app_manifest_portal', '{\"title\":\"门户应用\",\"name\":\"portal\",\"version\":\"1.0.4\",\"demo_url\":\"http:\\/\\/demo.thinkcmf.com\",\"author\":\"ThinkCMF\",\"author_url\":\"http:\\/\\/www.thinkcmf.com\",\"keywords\":\"ThinkCMF portal应用\",\"description\":\"ThinkCMF portal应用\"}');
INSERT INTO `cmf_option` VALUES (5, 1, 'admin_settings', '{\"admin_password\":\"\"}');
INSERT INTO `cmf_option` VALUES (6, 1, 'upload_setting', '{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"jpg,jpeg,png,gif,bmp4,webp,avif\"},\"video\":{\"upload_max_filesize\":\"1024000\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"102400\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar\"}}}');
INSERT INTO `cmf_option` VALUES (7, 0, 'product_setting', '{\"authentication_mark\":[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}],\"sling_available\":[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"name\":\"Grab bucket\"},{\"url\":\"admin\\/20241113\\/824a82b72ea134766c71f846ea44c2ae.png\",\"name\":\"Magnetic chuck\"},{\"url\":\"admin\\/20241113\\/b3ff42aa447759303923d0e656a0fa2f.png\",\"name\":\"Hanging beam\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"name\":\"Container spreader\"}],\"sling_available_active\":[{\"url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"},{\"url\":\"admin\\/20241113\\/6ff397a380eb350f33cc45efd876b272.png\",\"name\":\"Magnetic chuck\"},{\"url\":\"admin\\/20241113\\/4505daf8bdd52128d663e61e5c8bc2eb.png\",\"name\":\"Hanging beam\"},{\"url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}],\"lifting_capacity\":[\"0.5t\",\"1t\",\"2t\",\"5t\"],\"operating_voltage\":[\"380V\",\"460V\",\"230V\",\"220V\",\"115V\"],\"job_level\":[\"A1\",\"A2\",\"A3\",\"A4\"],\"product_file\":{\"url\":\"admin\\/20241124\\/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"},\"operating_hertz\":[\"50Hz\",\"60Hz\"]}');
INSERT INTO `cmf_option` VALUES (8, 0, 'index_setting', '{\"about_description\":\"HENAN MINE CRANE IM&amp;EX CO.,LTD is a professional crane and material handling products manufacturers and service providers, research and development, design, manufacturing, sales, service in one, to provide customers with overall solutions and full life cycle services.\",\"video_description\":\"The company has been committed to the intelligent, green and high.qualitydevelopment of the crane industry, leading the formulationandimplementation of industry standards, and providing the highestcost.effective products and services for tens of thousands of customers in122countries around the world. In the scale of annual revenue of more than10billion, no loans, no financing, no default.\",\"about_images\":[{\"url\":\"admin\\/20241124\\/43f2d6eeba5b782f466f2e5dc209b43b.webp\",\"name\":\"b8fdf05714c1989eced8b8cca352ff33.webp\"},{\"url\":\"admin\\/20241124\\/563c10b96a4efb71ac849fff7135068e.webp\",\"name\":\"8d7da5dbd7a77b0f448148c78db1ecfd.webp\"},{\"url\":\"admin\\/20241124\\/171af76bfbf9f33051f0c1d9b2153431.webp\",\"name\":\"8c73dd859ca9123e6c0f24b335f41ac5.webp\"}],\"video\":\"admin\\/20241121\\/70e12914c5c07cddb2e4fd7b72672455.mp4\",\"video_image\":\"admin\\/20241124\\/625aaedd40ce9014effe46b05bb9f9aa.webp\"}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '插件安装时间',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '插件描述',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类父id',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类文章数',
  `type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '类型：1产品，2文章；3:行业案例；4:服务中心；5:视频；6:下载中心（附件）;7:关于我们；',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `list_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
INSERT INTO `cmf_portal_category` VALUES (1, 0, 0, 1, 1, 0, 10000, 'Bridge Crane', '', '0-1', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (2, 0, 0, 1, 1, 0, 10000, 'Gantry Crane', '', '0-2', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (3, 0, 0, 1, 1, 0, 10000, 'Special Crane', '', '0-3', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (4, 0, 0, 1, 1, 0, 10000, '电动葫芦', '', '0-4', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (5, 0, 0, 1, 1, 0, 10000, 'Classic case', '', '0-5', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (6, 0, 0, 2, 1, 0, 10000, '关于我们', '', '0-6', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (7, 6, 0, 2, 1, 0, 10000, 'EnterpriseHonor', '', '0-6-7', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (8, 0, 0, 2, 1, 1731576860, 10000, '新闻中心', '', '0-8', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (9, 6, 0, 2, 1, 0, 10000, 'EnterpriseStyle', '', '0-6-9', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (10, 0, 0, 2, 1, 0, 10000, 'ActiveRecord', '', '0-10', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (11, 0, 0, 2, 1, 0, 10000, '社会责任', '', '0-11', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (12, 11, 0, 2, 1, 0, 10000, 'HelpingStudents', '', '0-11-12', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (13, 11, 0, 2, 1, 0, 10000, 'SafetyConstruction', '', '0-11-13', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (14, 11, 0, 2, 1, 0, 10000, 'HelpingPoor', '', '0-11-14', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (15, 11, 0, 2, 1, 0, 10000, 'RuralRevitalization', '', '0-11-15', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (16, 11, 0, 2, 1, 0, 10000, 'PublicCulturalServices', '', '0-11-16', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (17, 0, 0, 2, 1, 1731910156, 10000, '案例1', '', '0-17', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (18, 0, 0, 2, 1, 1731910160, 10000, 'case1', '', '0-18', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (19, 0, 0, 3, 1, 1732159235, 10000, 'case1', '', '0-19', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (20, 0, 0, 5, 1, 0, 10000, 'video1', '', '0-20', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (21, 0, 0, 5, 1, 0, 10000, 'video2', '', '0-21', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (22, 0, 0, 7, 1, 0, 10000, 'Enterprise Periodicals', '', '0-22', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (23, 0, 0, 7, 1, 0, 10000, 'Enterprise Honours', '', '0-23', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (24, 0, 0, 7, 1, 0, 10000, 'Enterprise Style', '', '0-24', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (25, 0, 0, 7, 1, 0, 10000, 'Advanced Equipment', '', '0-25', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (26, 0, 0, 7, 1, 0, 10000, 'Corporate Culture', '', '0-26', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (27, 0, 0, 7, 1, 0, 10000, 'Social Responsibility', '', '0-27', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (28, 0, 0, 3, 1, 0, 10000, 'Metallurgy', '', '0-28', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (29, 0, 0, 3, 1, 0, 10000, 'Port Container', '', '0-29', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (30, 0, 0, 3, 1, 0, 10000, 'Machining', '', '0-30', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (31, 0, 0, 3, 1, 0, 10000, 'Logistics', '', '0-31', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (32, 0, 0, 3, 1, 0, 10000, 'Transport', '', '0-32', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (33, 0, 0, 3, 1, 1732160905, 10000, 'Transport', '', '0-33', '', '', '', '', '', NULL);
INSERT INTO `cmf_portal_category` VALUES (34, 0, 0, 3, 1, 0, 10000, 'Construction', '', '0-34', '', '', '', '', '', NULL);

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `term_taxonomy_id`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'portal应用 分类文章对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
INSERT INTO `cmf_portal_category_post` VALUES (1, 1, 1, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (2, 2, 1, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (3, 3, 1, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (6, 9, 7, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (7, 10, 7, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (8, 12, 10, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (9, 13, 10, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (10, 14, 12, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (11, 15, 12, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (12, 18, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (13, 19, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (14, 20, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (15, 21, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (16, 22, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (17, 23, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (18, 24, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (19, 25, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (20, 26, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (21, 27, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (22, 28, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (23, 29, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (24, 30, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (25, 31, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (26, 32, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (27, 33, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (28, 34, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (29, 35, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (30, 36, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (31, 37, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (32, 38, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (33, 39, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (34, 40, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (35, 41, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (36, 42, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (37, 43, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (38, 44, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (39, 45, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (40, 46, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (41, 47, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (42, 48, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (43, 49, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (44, 50, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (45, 51, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (46, 52, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (47, 53, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (48, 54, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (49, 55, 3, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (50, 56, 3, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (51, 57, 3, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (52, 58, 3, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (53, 59, 3, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (54, 60, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (55, 61, 3, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (56, 62, 3, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (57, 63, 5, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (58, 64, 3, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (59, 65, 3, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (60, 66, 5, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (63, 71, 22, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (64, 73, 28, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (65, 74, 28, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (66, 75, 28, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (67, 76, 28, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (68, 77, 28, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (69, 78, 28, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (70, 79, 29, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (72, 81, 32, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (73, 82, 32, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (74, 83, 30, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (75, 84, 34, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (76, 80, 31, 10000, 1);

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型,1:文章;2:页面;3:行业案例；4:服务中心；5:视频；6:下载中心（附件）;7:关于我们；',
  `post_format` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表者用户id',
  `post_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看数',
  `post_favorites` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏数',
  `post_like` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comment_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `published_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'post摘要',
  `post_source` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `post_content_filtered` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '处理过的文章内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `create_time`, `id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE,
  FULLTEXT INDEX `title_content_idx`(`post_content`, `post_excerpt`)
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES (4, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1730281900, 1732176172, 1730281800, 0, 'Company Profile', '企业简介', '企业简介', '', '', '\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;text-wrap: nowrap;&quot;&gt;&lt;/span&gt;&lt;span style=\'font-size: 36px; font-family: &quot;arial black&quot;, &quot;avant garde&quot;; color: rgb(0, 0, 0);\'&gt;HENAN MINE CRANE IM&amp;amp;EX CO.,LTD&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: left;&quot;&gt;&lt;span style=\'font-family: &quot;arial black&quot;, &quot;avant garde&quot;; font-size: 24px; color: rgb(0, 0, 0);\'&gt;Overview&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: left;&quot;&gt;HENAN MINE CRANE IM&amp;amp;EX CO.,LTD,located in crane hometown of China, is a share-holding industry enterprise with research, manufacturing and sales together. Our company supplies electric hoist, electric winch, single-beam crane, double-beam crane, bridge-type crane, grab basket crane, foundry crane, anti-explosion crane and European standard overhead crane, etc.&lt;/p&gt;\n&lt;p style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img src=&quot;default/20241119/5eca0fbcfd4e09e224714d3f5a5f95ea.png&quot; title=&quot;图像 91.png&quot; alt=&quot;图像 91.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\'font-family: &quot;arial black&quot;, &quot;avant garde&quot;; font-size: 24px;\'&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\'font-size: 24px; font-family: &quot;arial black&quot;, &quot;avant garde&quot;; color: rgb(0, 0, 0);\'&gt;Enterprise Scale&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: 16px; font-family: arial, helvetica, sans-serif;&quot;&gt;The 2,700-plus-member factory covers over 680,000 square meters and has a total asset of RMB 660 million. The 1,200-plus equipment enable the company to independently conduct over 20 technological flows, including lathing, milling, planning and grinding, The 180-plus intermediate and senor technical staff are responsible for R&amp;amp;D and production of all the products. The products have passed CE SGS TUV BV and CU-TR verification, and factory passed ISO9001-2008 international certification, IS014001:1996 environmental and ISO28001-2001 quality, health and safety certification. Our company has perfect quality-control system, strict and comprehensive management system, strong production capability and advanced test measures, guaranteeing high quality, output, competitiveness and market share.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: 16px; font-family: arial, helvetica, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: 16px; font-family: arial, helvetica, sans-serif;&quot;&gt;&lt;img src=&quot;default/20241119/efc1e4923e9cc0894d6e3d83f29e63d5.png&quot; title=&quot;蒙版组 140.png&quot; alt=&quot;蒙版组 140.png&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: 16px; font-family: arial, helvetica, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\'font-size: 24px; font-family: &quot;arial black&quot;, &quot;avant garde&quot;; color: rgb(0, 0, 0);\'&gt;Scientific Management System&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;The 2,700-plus-member factory covers over 680,000 square meters and has a total asset of RMB 660 million. The 1,200-plus equipment enable the company to independently conduct over 20 technological flows, including lathing, milling, planning and grinding, The 180-plus intermediate and senor technical staff are responsible for R&amp;amp;D and production of all the products. The products have passed CE SGS TUV BV and CU-TR verification, and factory paIt is a member of China Quality inspection Association and the vice-chairman of China Heavy Machinery Industry Association. What\'s more, it covers more than 2/3 market in China for cranes\' high cost performance. Our company has been adhered to modern scientific management system, precision manufacturing, pioneering and innovation since we started. Now Mine Crane has become the leader in domestic and oversea machinery manufacturing industry.&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;On the foundation of scientific management system, automation office system, stronger production ability, advanced testing methods and strong sales net produce “KUANGYUAN” brand series products with high quality and reasonable price. KUANGYUAN people will make it a new star of China crane manufacturing industry. Mine Crane has made great contributions to the development of mechanical manufacturing industry for China and the whole world.ssed ISO9001-2008 international certification, IS014001:1996 environmental and ISO28001-2001 quality, health and safety certification. Our company has perfect quality-control system, strict and comprehensive management system, strong production capability and advanced test measures, guaranteeing high quality, output, competitiveness and market share.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\'font-size: 24px; font-family: &quot;arial black&quot;, &quot;avant garde&quot;; color: rgb(0, 0, 0);\'&gt;Honors&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;The company keeps on its investment and its economic indicators such as profit and tax are increasing with an annual rate of 30%. The products are sold in over 30 provinces, municipalities and autonomous regions and exported to such countries as Russia, Australia, Vietnam, India and Thailand. With an annual sales volume of over 4,000 gantry cranes, over 35,000 single-girder cranes as well as about 46,000 single- and double-girder electric hoists and their accessories, the company ranks among the top in the lifting machine industry in terms of per capita output value and economic benefit. The company has obtained over 120 honors and certificates, including “Hi-tech Enterprise” at ministry, province and city levels, “Chinese Famous Brand”, “2009 Top 50 in Lifting and Transportation Industry of China”, “Top 10 Brands of Chinese Crane”, “Famous Commodity of Henan”, “Famous Brand of Henan”, “Famous Product of Henan”, “Enterprise Satisfying Standards for Overall Quality Management”, “Contract-honoring and Promise-keeping Enterprise”, “Enterprise Free from Faked Product, Fraud or Unfair Competition”, “Quality Trust-worthy Unit”, “Brand Promoted by CCTV” and “Certificate of Xinxiang Mayor Quality Award”.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\'font-size: 24px; font-family: &quot;arial black&quot;, &quot;avant garde&quot;; color: rgb(0, 0, 0);\'&gt;Business Outlook&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: 16px; font-family: arial, helvetica, sans-serif;&quot;&gt;Quality makes brand, honesty weaves the future. Hold the hands of Mine Crane and we will be friends forever!&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES (7, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1730687751, 1731574580, 0, 1732160885, 'LeadershipSpeech', '', '', '', '', '\n&lt;p class=&quot;normalPara&quot; style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;&lt;span style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-family: &quot;Microsoft YaHei&quot;;\'&gt;&lt;/span&gt;&lt;/span&gt;First of all, welcome and thank you for visiting our website and paying attention to our products.&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;&lt;span style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-family: &quot;Microsoft YaHei&quot;;\'&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;A bosom friend afar brings a distant land near. Here, on behalf of all the staff of Henan Mining Crane Co., Ltd. to all the friends who have been concerned about and support the development of our company express heartfelt thanks!&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;Since the establishment of our company in 2002, all employees have been united as one, united as one, with the enterprising state, the spirit of innovation, and the pragmatic style, facing difficulties and working hard. The scale of the company has expanded rapidly and its influence has been increasing. The company always adheres to the purpose of &quot;quality casts brand, integrity weaves the future&quot;, in order to meet the needs of customers as the concept, we always believe that: your support is the source of our growth, your recognition is the soil of our growth. Adhere to achieve the purpose of &quot;win-win cooperation&quot;, strong quality inside, tree image outside.&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;Bold and bold, bold and vigorous. There is no smooth road to development and no limit to innovation. In the past, we have worked together to overcome difficulties and won initial victories. Today, we are standing at a new starting point, and the new horn for enterprise development has sounded. I am convinced that with our wisdom, hard work, continuous innovation passion, unity and all-out efforts, we will be able to create a new height of Henan mining industry, write a new chapter in the history of Henan mining, and achieve a new development of Henan mining!&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; font-size: 14px; line-height: 26px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;text-indent: 0em;&quot;&gt;A mining hand is a friend for life. We sincerely look forward to friendly cooperation with colleagues from all walks of life to win in economic development and prosperity.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, NULL);
INSERT INTO `cmf_portal_post` VALUES (8, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1730687887, 1731574670, 0, 1732160882, 'AdvancedEquipment', '', '', '', '', '\n&lt;p&gt;Henan Mining Crane Co., Ltd. is a professional crane and material handling products manufacturers and service providers, research and development, design, manufacturing, sales, service in one, to provide customers with overall solutions and full life cycle services.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;The company has been committed to the intelligent, green and high-quality development of the crane industry, leading the formulation and implementation of industry standards, and providing the highest cost-effective products and services for tens of thousands of customers in 122 countries around the world. In the scale of annual revenue of more than 10 billion, no loans, no financing, no default.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;At present, the company has made remarkable achievements in more than 50 professional fields such as aerospace, automobile and ship, petrochemical, railway, iron and steel smelting, machinery manufacturing and waste incineration, and has achieved annual sales of more than 117,000 units (sets) of various lifting equipment in 2023.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;It has won the &quot;China Industry Award Nomination Award&quot;, &quot;China Industrial Enterprise Quality Benchmark Enterprise&quot;, &quot;National Green Factory&quot;, &quot;National contract and credit Enterprise&quot;, &quot;National Manufacturing Single champion product&quot;, &quot;high-tech enterprise&quot;, &quot;Independent Innovation Leading Enterprise&quot;, &quot;Henan Provincial Governor Quality Award&quot;, &quot;Henan Province Intelligent Workshop&quot;, &quot;Henan Province Intelligent Factory&quot;, and River The first batch of &quot;Two integration demonstration enterprises&quot; in Southern Province has more than 500 awards. Product production and sales, market share, automation intelligent equipment level for many years in the forefront of the same industry in the country.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;In 2020, the company and the Henan Special Inspection Institute through the key laboratory construction, cooperation and innovation of the inspection and testing base, the establishment of the &quot;hospital in the factory, the factory in the hospital&quot;, the establishment of the national bridge and light and small lifting machinery quality supervision and inspection center, a total of 18 products, 1125 projects (parameters), the detection capacity covers the entire bridge crane manufacturing process. It has obtained the &quot;three-in-one&quot; qualification and laboratory accreditation from the China Accreditation Administration and the National Accreditation Commission.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&quot;Tree a hundred years of mineral resources, create a first-class enterprise&quot; is the company\'s long-cherished wish. The company takes &quot;filial piety culture&quot; as the core values of corporate culture, takes &quot;three hearts and six most&quot; as the development goal, wins the world in good faith, cooperates with friends from all walks of life, and is committed to leading the high-quality development of the crane industry.&lt;/p&gt;\n', NULL, NULL);
INSERT INTO `cmf_portal_post` VALUES (9, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1730690053, 1731576621, 1730689920, 0, 'The 6th China Industry Award nomination Award', '', 'The 6th China Industry Award nomination Award', '', 'portal/20241104/cc85055fb1eec969332b47cbb8b603d1.jpg', '', NULL, '{\"video\":\"\",\"thumbnail\":\"portal\\/20241104\\/cc85055fb1eec969332b47cbb8b603d1.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (10, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1730692111, 1731576602, 1730692020, 0, 'National green factory', '', 'National green factory', '', 'portal/20241104/b2a071386e6bd96cec657e5659b695db.jpg', NULL, NULL, '{\"video\":\"\",\"thumbnail\":\"portal\\/20241104\\/b2a071386e6bd96cec657e5659b695db.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (11, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1730712868, 1731574784, 0, 1732160879, 'FilialPietyCultur', '', '', '', '', '\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;&lt;/span&gt;Since the establishment of Henan Mine, the high-level team with the company founder and Party secretary Cui Peijun as the core has given full play to the role of &quot;leader&quot; and led Henan Mine to achieve rapid development. Relying on the leadership team and the wisdom of all staff, we have established a unique filial piety culture system of Henan Mine, established the mission, vision and core values of the company, created a good atmosphere of people-oriented and honest management, improved corporate governance, fulfilled social responsibilities, and created an enterprise that pursues excellence and healthy development.&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;The core values of &quot;three hearts&quot; : harmonious family with filial piety, sincere solidarity with comrades, enthusiastic service to customers.&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;The company pays attention to the culture to lead the development of enterprises, play the guiding function of &quot;filial piety culture&quot;, and inspire employees to pursue the passion of truth, kindness and beauty with simple good deeds and filial piety. The company put forward the core values of &quot;three hearts&quot;, harmonious family with filial piety, sincere solidarity with comrades, and enthusiastic service to customers. The culture of filial piety has strengthened the spirit of solidarity and mutual assistance and service awareness of employees, narrowed the distance between enterprises and employees and customers, promoted cultural exchanges and all-round cooperation between enterprises, and established a good market image. It has formed a unique corporate culture with mission, vision and values as the core.&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;Adhering to the dedication of &quot;benefiting Sangzi and serving society&quot;, the company actively plays an exemplary role in fulfilling social responsibilities, shaping a good image of excellent enterprises, and realizing the harmonious development of enterprises, families and society.&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 0em;\'&gt;Held nine consecutive Mid-Autumn Festival Filial piety culture festival, and entertained more than 6,000 employees\' parents every year; Held 11 filial piety culture tourism Festival in succession, and organized more than 1,000 employees\' parents to travel around the country each time; It has carried out 19 consecutive activities to donate money to poor college students, with a total of more than 4,000 people. Donations to charities such as poverty alleviation, education and elderly care, safety construction, and new rural construction exceeded 100 million yuan.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, NULL);
INSERT INTO `cmf_portal_post` VALUES (12, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1730714982, 1731576581, 1730714880, 0, 'The 10th &quot;Filial Piety Culture&quot; Thanksgiving Tourism Festival', '', 'The 10th &quot;Filial Piety Culture&quot; Thanksgiving Tourism Festival', '', 'default/20241104/f784bea016f681958c26c0090bb02bb8.jpg', '&lt;p&gt;&lt;img src=&quot;default/20241104/f784bea016f681958c26c0090bb02bb8.jpg&quot; title=&quot;e6c5b42f-c81d-4757-9e98-8d5e6d6770a2.jpg&quot; alt=&quot;e6c5b42f-c81d-4757-9e98-8d5e6d6770a2.jpg&quot;&gt;&lt;/p&gt;', NULL, '{\"video\":\"\",\"thumbnail\":\"default\\/20241104\\/f784bea016f681958c26c0090bb02bb8.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (13, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1730715872, 1731576561, 1730715780, 0, 'Spring Festival benefits for frontline employees', '', 'Spring Festival benefits for frontline employees', '', 'portal/20241104/733cfa911106a4a6b5c4142d0f53f8cb.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20241104/733cfa911106a4a6b5c4142d0f53f8cb.jpg&quot; title=&quot;63a47d1e-2c95-4cc0-9941-be36227e26ca.jpg&quot; alt=&quot;63a47d1e-2c95-4cc0-9941-be36227e26ca.jpg&quot;&gt;&lt;/p&gt;', NULL, '{\"video\":\"\",\"thumbnail\":\"portal\\/20241104\\/733cfa911106a4a6b5c4142d0f53f8cb.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (14, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1730766453, 1730766453, 1730766421, 1731661297, '助学1', '', '', '', 'portal/20241104/733cfa911106a4a6b5c4142d0f53f8cb.jpg', '&lt;p&gt;111&lt;/p&gt;', NULL, '{\"video\":\"\",\"thumbnail\":\"portal\\/20241104\\/733cfa911106a4a6b5c4142d0f53f8cb.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (15, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1730766477, 1730766477, 1730766421, 1731576516, '助学2', '', '', '', 'portal/20241105/901db277042a4188a17f55f5e105d405.jpg', '&lt;p&gt;222&lt;/p&gt;', NULL, '{\"video\":\"\",\"thumbnail\":\"portal\\/20241105\\/901db277042a4188a17f55f5e105d405.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (16, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1730766694, 1731576101, 0, 1732160875, 'Contact Us', '', '', '', '', '\n&lt;p&gt;&lt;strong style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;Company Address:&lt;/strong&gt;&lt;br style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=\'color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;1117 Cross border Trade Building, Xin\'er Street, Jinsui Avenue, Hongqi District, Xinxiang City, Henan Province,China&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;Free sales Service hotline:&lt;/strong&gt;&lt;br style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=\'color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;+86-0373-3088011&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;Company Email:&lt;/strong&gt;&lt;br style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=\'color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;info@hukscrane.com&lt;/span&gt;&lt;/p&gt;\n', NULL, NULL);
INSERT INTO `cmf_portal_post` VALUES (17, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1730766777, 1730879274, 0, 1732160888, 'Join Us', '', '', '', '', '\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;企业简介&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;河南省矿山起重机有限公司成立于2002年，公司建设面积162万平方米，现有员工5100余人。专业从事“矿源”牌桥式起重机、门式起重机及电动葫芦等三大系列110余种各类起重机及配套件产品的研发、设计、生产、销售及服务。作为一家专业的起重机及物料搬运产品制造商和服务供应商，能够为客户提供整体解决方案和全生命周期服务，致力于起重机产业的智能、绿色、高质量发展。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt; &lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;福利待遇&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、免费食宿，宿舍配有空调、网络、独立卫生间；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、不定期旅游、发放节日福利、免费洗浴、红白喜事礼金；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;3、定期培训，为员工的发展提供支持；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;4、工资准时发放、带薪年假、工龄工资、缴纳五险一金；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;5、定期发放工装、劳保防护用品。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt; &lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;招聘岗位&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;一、机械设计工程师&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;岗位职责：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、桥、门式起重机的机械设计及开发；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、根据客户需求提供相应的技术解决方案。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;任职要求：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、要求机械设计制造及其自动化相关专业，全日制本科及以上学历；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、本行业工作经验2年以上，具有良好的沟通能力和团队合作精神；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;3、熟练应用solidworks等三维软件者优先；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;4、注重团队精神，学习能力和执行能力强；较强的分析、总结和表达能力。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;二、力学分析工程师&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;岗位职责：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、使用有限元分析软件进行力学计算工作；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、力学分析报告的编写工作。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;任职要求：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、力学、结构设计类专业，本科及以上学历；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、专业课成绩优异，具有扎实的力学课程基础，熟练应用CAE软件；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;3、注重团队精神，学习能力和执行能力强；较强的分析、总结和表达能力；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;4、有从事“有限元分析”项目经历者优先考虑。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;三、焊接/金工工艺师&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;岗位职责：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;焊接工艺师：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、制定钢结构焊接工艺、钢结构总装焊接工艺；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、焊接工装的设计及评定、制定焊接工艺标准；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;3、制定焊接工艺评定、焊接工艺标准；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;4、指导焊接工人的焊接工作。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;金工工艺师：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、制定零部件的机加工（装配）工艺；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、制定加工工艺标准及流程。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;任职要求：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;焊接工艺师：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、全日制大专及以上学历，机械设计制造及其自动化、焊接、机电一体化等相关专业；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、熟悉各种焊接设备的工作原理；熟悉各种金属材料的焊接特性及要求；熟悉各种焊接产品质量分析及工艺解决方法，能够评估新产品生产工艺的合理性并要根据产品定制合适的生产工艺；具备CAD方面的技能；具备创造性的工作能力和高度的责任心。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;金工工艺师：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;1、全日制大专及以上学历，机械设计制造及其自动化、焊接、机电一体化等相关专业；&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;2、熟悉并掌握零部件的装配工艺。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;四、保安&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;任职要求：&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;男士，年龄40-55岁，身体健康，退伍军人优先考虑。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;五、一线岗位&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;焊工、司机室制作工、数控镗床工、电器柜箱制作工、数控磨齿工、KBK制作工、数控车工、电器装配工、剪板机下料工、打磨工、小车装配工、刷漆工、锻造工、焊工学徒工、热处理工。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt; &lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-indent: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;联系我们&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;河南矿山总部&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;联系方式：0373-8735670&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;地址：长垣市长恼工业区矿山路与纬三路交汇处&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt; &lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;河南矿山智能产业园&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;联系方式：0373-7075197&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin-top: 0em; margin-bottom: 0em; list-style-type: none; line-height: 26px; font-size: 14px; color: rgb(121, 121, 121); font-family: &quot;Microsoft YaHei&quot;, &quot;HanHei SC&quot;, &quot;SF Pro Text&quot;, &quot;Myriad Set Pro&quot;, &quot;SF Pro Icons&quot;, &quot;Apple Legacy Chevron&quot;, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0em; text-wrap: wrap; background-color: rgb(255, 255, 255); text-indent: 2em;\'&gt;&lt;span style=&quot;box-sizing: border-box; animation-fill-mode: both; padding: 0px; margin: 0px; font-size: 16px;&quot;&gt;地址：长垣市桂陵大道与阳泽路交汇处&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, NULL);
INSERT INTO `cmf_portal_post` VALUES (69, 0, 6, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1731915436, 1731915436, 0, 1732175910, 'file1', '', NULL, '', '', NULL, NULL, '{\"file\":{\"url\":\"portal\\/20241110\\/6c284048b1c23f8480b6f81714a949cd.xls\",\"name\":\"新建 XLS 工作表 (2).xls\"}}');
INSERT INTO `cmf_portal_post` VALUES (70, 0, 5, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1731915872, 1732004709, 0, 1732169696, 'video1', '', NULL, '', '', NULL, NULL, '{\"thumbnail\":\"portal\\/20241110\\/a35427b51b34e23f88d8eb42b0d72286.jpg\",\"video\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES (71, 0, 7, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1731916684, 1732093630, 0, 1732439411, 'Periodicals 1', '', NULL, '', 'portal/20241110/4d46e206035e9334bdc866728bf6160b.jpg', '\n&lt;p&gt;Periodicals&lt;/p&gt;\n&lt;p&gt;Periodicals&lt;/p&gt;\n&lt;p&gt;Periodicals&lt;/p&gt;\n', NULL, '{\"thumbnail\":\"portal\\/20241110\\/4d46e206035e9334bdc866728bf6160b.jpg\"}');
INSERT INTO `cmf_portal_post` VALUES (72, 0, 5, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1732006550, 1732008099, 0, 1732169691, 'video2', '', NULL, '', '', NULL, NULL, '{\"thumbnail\":\"portal\\/20241110\\/ef32b046c47388335fbf45efabbec7c0.jpg\",\"video\":\"portal\\/20241119\\/cafa096f7fcf42d08ee6658e46d3814b.mp4\"}');
INSERT INTO `cmf_portal_post` VALUES (73, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732159070, 1732515928, 0, 0, 'Vietnam Yishan Steel Group project', '', NULL, '', 'portal/20241125/41843a2a860e11fa919f4e5c2be346e3.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/41843a2a860e11fa919f4e5c2be346e3.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (74, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732159569, 1732515915, 0, 0, 'Panhua Group intelligent hot rolling project', '', NULL, '', 'portal/20241125/cfbe1dd33549b0b41879801961c2f6a7.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/cfbe1dd33549b0b41879801961c2f6a7.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (75, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732159699, 1732515891, 0, 0, 'Intelligent coke tank crane', '', NULL, '', 'portal/20241125/7f6152ef12e5a8a5824ac15bdef9f4fd.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/7f6152ef12e5a8a5824ac15bdef9f4fd.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (76, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732159818, 1732515866, 0, 0, 'Unmanned grab crane', '', NULL, '', 'portal/20241125/581ea65f41ced45d6336a6142ca5e94d.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/581ea65f41ced45d6336a6142ca5e94d.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (77, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732160082, 1732515849, 0, 0, 'Shandong Iron and Steel Group Rizhao Co., LTD. Furnace roll project', '', NULL, '', 'portal/20241125/14cf7241ae8738bd703240974fb40f16.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/14cf7241ae8738bd703240974fb40f16.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (78, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732160512, 1732515835, 0, 0, 'Baosteel Zhanjiang project', '', NULL, '', 'portal/20241125/c2c479d6327dbd13b972719e1774f199.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/c2c479d6327dbd13b972719e1774f199.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (79, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732160656, 1732515800, 0, 0, 'Lanzhou International Port Area project', '', NULL, '', 'portal/20241125/2e32c19ebae2f33a89d79653afd47507.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/2e32c19ebae2f33a89d79653afd47507.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (80, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732160832, 1732515787, 0, 0, '&quot;Garlic through the world&quot; unmanned cold storage project', '', NULL, '', 'portal/20241125/ac6c0fc3c4fe7ffc37aae55b720c5355.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/ac6c0fc3c4fe7ffc37aae55b720c5355.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (81, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732160916, 1732515774, 0, 0, 'Pakistan Lahore rail transit Orange line project', '', NULL, '', 'portal/20241125/82f9bf0f6eee70cadf1c2557f55665d1.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/82f9bf0f6eee70cadf1c2557f55665d1.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (82, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732161010, 1732515758, 0, 0, 'Xi \'an Railway Bureau new harmony type high-power locomotive maintenance project', '', NULL, '', 'portal/20241125/1c1f1a4d5f15a568887930dc35c9c9fa.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/1c1f1a4d5f15a568887930dc35c9c9fa.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (83, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732161092, 1732515713, 0, 0, 'Clean explosion-proof automatic crane', '', NULL, '', 'portal/20241125/1248abe359d1ce1f5118af4e8ef66c51.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/1248abe359d1ce1f5118af4e8ef66c51.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (84, 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732161177, 1732515698, 0, 0, 'Xugong Group project', '', NULL, '', 'portal/20241125/b1483588460e375173757a09a7558293.webp', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/b1483588460e375173757a09a7558293.webp\"}');
INSERT INTO `cmf_portal_post` VALUES (85, 0, 5, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1732169032, 1732440277, 0, 1732519064, 'Henan mine propaganda film', '', NULL, '', '', NULL, NULL, '{\"thumbnail\":\"admin\\/20241124\\/625aaedd40ce9014effe46b05bb9f9aa.webp\",\"video\":\"admin\\/20241121\\/70e12914c5c07cddb2e4fd7b72672455.mp4\"}');
INSERT INTO `cmf_portal_post` VALUES (86, 0, 6, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1732177219, 1732440955, 0, 0, 'Henan Mine Crane catalogue', '', NULL, '', '', NULL, NULL, '{\"file\":{\"url\":\"portal\\/20241124\\/6d9c566aeac6a913c131d53e1f702414.pdf\",\"name\":\"Henan Mine Crane catalogue.pdf\"}}');
INSERT INTO `cmf_portal_post` VALUES (87, 0, 6, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1732177232, 1732440933, 0, 0, 'Mine crane company in Henan', '', NULL, '', '', NULL, NULL, '{\"file\":{\"url\":\"portal\\/20241124\\/f34265e8c9de4e2c13949dda70f0cc15.pdf\",\"name\":\"Mine crane company in Henan.pdf\"}}');
INSERT INTO `cmf_portal_post` VALUES (88, 0, 5, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1732519016, 1732519016, 0, 0, 'Henan Mining Company Promotional Video', '', NULL, '', '', NULL, NULL, '{\"thumbnail\":\"portal\\/20241125\\/c3fd1c06669f48d0f360e342d0fc1fa5.png\",\"video\":\"portal\\/20241125\\/af5a6df7fdd86a34f9371a091b7db178.mp4\"}');
INSERT INTO `cmf_portal_post` VALUES (89, 0, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1732614785, 1732615204, 0, 0, 'Service', '', '', '', '', '&lt;p&gt;111&lt;/p&gt;', NULL, NULL);

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------
INSERT INTO `cmf_portal_tag` VALUES (1, 1, 0, 0, '320t四梁铸造起重机');

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'portal应用 标签文章对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------
INSERT INTO `cmf_portal_tag_post` VALUES (1, 1, 1, 0);

-- ----------------------------
-- Table structure for cmf_product
-- ----------------------------
DROP TABLE IF EXISTS `cmf_product`;
CREATE TABLE `cmf_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '产品标题',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品别名（用于url美化）',
  `alias_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '产品别名（逗号分割，用于匹配搜索）',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '产品缩略图',
  `photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '产品相册',
  `authentication_mark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '认证证书（证书配置列表，逗号分割）',
  `lifting_capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '起重量（列表，逗号分割）',
  `min_lifting_height` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '最小起重高度',
  `max_lifting_height` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '最大起重高度',
  `lifting_height_interval` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '起重高度间隔',
  `min_span` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '最小跨度',
  `max_span` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '最大跨度',
  `span_interval` float(10, 2) NOT NULL DEFAULT 0.00 COMMENT '跨度间隔',
  `operating_voltage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作电压（列表，逗号分割）',
  `job_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作等级（列表，逗号分割）',
  `sling_available` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '可配吊具（吊具配置列表，逗号分割）',
  `temperature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作环境温度',
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用行业',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附件下载',
  `overview` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '产品概述',
  `scenario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '应用场景',
  `certificate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '证书（图片标题列表）',
  `case` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '案例（图片标题列表）',
  `list_order` int(11) NOT NULL DEFAULT 10000 COMMENT '排序',
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐，0不推荐，1推荐',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  INDEX `delete_time`(`delete_time`) USING BTREE,
  INDEX `lifting_height`(`min_lifting_height`, `max_lifting_height`) USING BTREE,
  INDEX `span`(`min_span`, `max_span`) USING BTREE,
  FULLTEXT INDEX `content`(`title`, `overview`, `scenario`)
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_product
-- ----------------------------
INSERT INTO `cmf_product` VALUES (3, 5, 'Low Headroom Single Girder Overhead Crane', 'Low Headroom Overhead Crane', 'Low Headroom Light Crane,Light Cranes,Overhead crane for low headroom applications,Low headroom crane,Low headroom overhead crane,Single Girder Overhead Crane with Low Headroom Hoist,Low headroom overhead travelling cranes,Low headroom suspension bridge cranes,Single Girder Low Headroom Overhead Crane', 'portal/20241124/61662c74d859ba538b2cbadf23e868c8.webp', '[{\"url\":\"portal\\/20241124\\/415739f82c55b2f9b1a9028ac39b4f2f.webp\",\"name\":\"图像 68.webp\"},{\"url\":\"portal\\/20241124\\/9ce45b8f27bd2c19737a1d11c6884c87.webp\",\"name\":\"图像 69.webp\"},{\"url\":\"portal\\/20241124\\/e4b6a45af79712c59a2c2bb18808d64b.webp\",\"name\":\"图像 70.webp\"},{\"url\":\"portal\\/20241124\\/70366a771fd07f1184d5ae071acc9fcb.webp\",\"name\":\"图像 71.webp\"},{\"url\":\"portal\\/20241124\\/f6feed6c898b2ed88de1731519373ebd.webp\",\"name\":\"图像 72.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"1t\",\"2t\",\"3.2t\",\"5t\",\"10t\"]', 0.00, 12.00, 1.00, 3.00, 16.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'LDC electric single-girder crane  is applicable to the places where the workshop is low and the requirement of lifting height is high.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;LDC electric single-girder crane is composed of box-shaped girder weld by steel plates,end girder, electric hoist and travelling mechanism The lower flange (material 16Mn) of the girder is the travelling orbit of electric hoist to accomplish article hoisting.&lt;/p&gt;', '&lt;p&gt;The electric block, of low headroom structure,can effectively increase the lifting height, so that it is applicable to the places where the workshop is low and the requirement of lifting height is high.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/4142584efae956e9f6159c55164c94f1.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/832db4f5303b128b3b7e8b66fc6cafd1.webp\",\"name\":\"\"}]', 10000, 1, 1731465527, 1732437075, NULL);
INSERT INTO `cmf_product` VALUES (23, 7, 'New Types Single Girder Bridge Crane', 'New Types Bridge Crane', 'European single girder overhead crane,European Style Overhead Travelling Crane with Electric Hoist,European Electric Single Girder Crane,New Types Electric Single Girder Crane,Electric Single Girder Crane', 'portal/20241124/704b7b14d7514c26bdd61829333c555b.webp', '[{\"url\":\"portal\\/20241124\\/0929d4676e571b2c7edeb69462693e16.webp\",\"name\":\"图像 176.webp\"},{\"url\":\"portal\\/20241124\\/60c5e327a7f0a3595e8e8359a4b2e83f.webp\",\"name\":\"图像 177.webp\"},{\"url\":\"portal\\/20241124\\/261f1e65efbef36a8cc42d5941f6e028.webp\",\"name\":\"图像 178.webp\"},{\"url\":\"portal\\/20241124\\/b7f68357bfabca14ce0bbc8f9c73b870.webp\",\"name\":\"图像 179.webp\"},{\"url\":\"portal\\/20241124\\/8fd7eeb800671696199ece9b05c69aca.webp\",\"name\":\"图像 180.webp\"},{\"url\":\"portal\\/20241124\\/a102d1e34af60cb26ddab092f8113fc7.webp\",\"name\":\"图像 181.webp\"},{\"url\":\"portal\\/20241124\\/3c74c575c1379e311f3e061522c59d74.webp\",\"name\":\"图像 182.webp\"},{\"url\":\"portal\\/20241124\\/a102d1e34af60cb26ddab092f8113fc7.webp\",\"name\":\"图像 183.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"1t\",\"2t\",\"3t\",\"5t\",\"10t\",\"16t\",\"20t\"]', 0.00, 18.00, 1.00, 9.50, 24.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'It is widely used machinery manufacture, warehouse, logistic, food, paper making, electronics industries workshop and other material handling situations.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;European single girder overhead crane is a kind of new generation crane with intelligent feature. The lifting mechanism is European style ND steel wire rope electric hoist . The lifting speed is double. And Cross &amp;amp; long traveling use infinitely variable frequency motor which make the crane travel smoothly. The crane design is based on FEM,DIN, ISO standard, which is extremely safe, ergonomic, convenient, and efficient for material transport. Its compact size structure could save lots of space.&lt;/p&gt;', '&lt;p&gt;Electric single girder European Hoist Type Overhead Crane could be widely used to handle materials in many industries\' workshop and warehouse. Such as machinery manufacture, warehouse, logistic, food, paper making, electronics industries workshop and other material handling situations.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/50cd546199f3610117aa29a0b578dc54.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/1fa6d61b7e938cf8308628f653fc300f.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/70366a771fd07f1184d5ae071acc9fcb.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/832db4f5303b128b3b7e8b66fc6cafd1.webp\",\"name\":\"\"}]', 10000, 1, 1731549708, 1732437904, NULL);
INSERT INTO `cmf_product` VALUES (4, 5, 'Partial Hang Single Girder Overhead Crane', 'Partial Hang Overhead Crane', 'Partial Hang Industrial Using Overhead Crane Single Girder General,Partial Hang Single Girder Underslung Crane,Electric Partial Hanging Overhead Crane ', 'portal/20241124/01b99863b3b1527ab2c0c77a0ba4f144.webp', '[{\"url\":\"portal\\/20241124\\/2ac8edbce48747585abb33f48ac6b8e2.webp\",\"name\":\"图像 76.webp\"},{\"url\":\"portal\\/20241124\\/795645aec040a8e0d4d096a2ecaff2c3.webp\",\"name\":\"图像 77.webp\"},{\"url\":\"portal\\/20241124\\/b39e94947503dec3cee4721b0a029e60.webp\",\"name\":\"图像 78.webp\"},{\"url\":\"portal\\/20241124\\/9fdf5d37d2d3bc519ef6a1a39d462885.webp\",\"name\":\"图像 79.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"3t\",\"5t\",\"10t\"]', 0.00, 12.00, 1.00, 7.50, 22.50, 1.00, NULL, '[\"A3\",\"A4\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '-25℃~40℃', 'LDP electric single-girder crane is applicable to the places where the workshop\' s headroom is low', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;The crane is composed of box-shaped girder weld by steel plates, end girder, crab and travelling mechanism. The crab consists of traveling end girder, crab frame and fixed electric block. The crab is partially hung and runs at one side of the g rider. The electric hoist is raised to the upside of the girder from under the girder,which effectively increasing the lifting altitude.&lt;/p&gt;\n&lt;p&gt;The crab is braked by conical motor and driven by exposed gear.&lt;/p&gt;\n&lt;p&gt;The girder, of box-shaped structure and bias rails,has horizontal wheels at the upper and the lower, so that it is safe and reliable and can avoid rail gnawing.&lt;/p&gt;\n&lt;p&gt;The trolley adopts separate drive, conical motor brake and exposed gear drive. The travelling motor can be soft start motor and variable-frequency adjustable-speed motor according to user requirements. The crane can start steadily and runs safely and reliably. &lt;/p&gt;\n&lt;p&gt;It has three operation modes:ground handle,wireless remote control and cab.The cab has two types: open cab and closed cab.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;LDP electric single-girder crane is a small-size low headroom crane. The electric hoist is at one side of the girder, which increases the work space of the hook and reduces the workshop height and cost. It is applicable to the places where the workshop\' s headroom is low.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/8a6e6874339fc0b34dbddf85b0731938.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/f5bfea48cc8197560a164207fdda5fa6.webp\",\"name\":\"\"}]', 10000, 1, 1731466243, 1732437029, NULL);
INSERT INTO `cmf_product` VALUES (2, 5, 'Single girder overhead crane', 'Single girder overhead crane', 'Single girder overhead travelling crane,Overhead Bridge Cranes', 'portal/20241124/8655cbb359772360bd2e6c2a3c18b2be.webp', '[{\"url\":\"portal\\/20241124\\/fa40b6b42ad661f477e25df3262bb957.webp\",\"name\":\"图像 61.webp\"},{\"url\":\"portal\\/20241124\\/e1d1efc1dca91ca4baebb6e89138e5d7.webp\",\"name\":\"图像 62.webp\"},{\"url\":\"portal\\/20241124\\/3589512ae41bd81fa55c20279fc30759.webp\",\"name\":\"图像 63.webp\"},{\"url\":\"portal\\/20241124\\/e188b2775c109ee3c6598a092bbbca58.webp\",\"name\":\"图像 64.webp\"},{\"url\":\"portal\\/20241124\\/d0aa474d8f49097db52b3fe87978ab09.webp\",\"name\":\"图像 65.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"1t\",\"2t\",\"3t\",\"5t\",\"16t\",\"20t\"]', 0.00, 30.00, 1.00, 7.50, 22.50, 1.00, NULL, '[\"A3\",\"A4\",\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '-25℃~40℃', 'This product is widely used in plants warehouses, material stocks to lift goods.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;LDA electric single-girder crane is composed of girder weld by steel plate and I-steel, end girder, electric hoist and travelling mechanism. The electric hoist runs along the lower flange of the l-steel of the girder to accomplish article hoisting. It features light structure and easy installation and maintenance. This product has two operational methods. Ground or operational room which has open model and closed model and can be installed on left or right side according to the practical situation. And the direction of entering the gate has two forms, sideway and ends in order to satisfy the users\' Choice users\' different conditions.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '\n&lt;p&gt;This product is widely used in plants warehouses, material stocks to lift goods. It is prohibited to use the equipment in the &lt;/p&gt;\n&lt;p&gt;combustible, explosive or corrosives environment.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/d0aa474d8f49097db52b3fe87978ab09.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/db75e3013c2926b0f193ed6dbf2b6c70.webp\",\"name\":\"\"}]', 10000, 1, 1731464479, 1732437119, NULL);
INSERT INTO `cmf_product` VALUES (5, 5, 'Grab Single Girder Overhead Crane', 'Grab Overhead Crane', 'Single Girder Overhead Crane with Grab,grab bucket overhead crane,Grab Overhead Crane', 'portal/20241124/2c3ceae740afa4c7ac61c121366eefbf.webp', '[{\"url\":\"portal\\/20241124\\/9a6af175c8686b1363f79422a1310248.webp\",\"name\":\"图像 80.webp\"},{\"url\":\"portal\\/20241124\\/60a85a64f2ee90b37af409541d5b9ec4.webp\",\"name\":\"图像 81.webp\"},{\"url\":\"portal\\/20241124\\/3fcb4c4a70013df84be58c703de6a0fa.webp\",\"name\":\"图像 82.webp\"},{\"url\":\"portal\\/20241124\\/e4c1c82254959e996089730ff6eb2ca5.webp\",\"name\":\"图像 83.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"3t\",\"5t\"]', 0.00, 18.00, 1.00, 7.50, 22.50, 1.00, NULL, '[\"A3\"]', '[{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'Single girder grab overhead travelling crane is mainly used to grab sand, scrap iron, rubbish, coal some bulk materials, or solid some materials.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;Single girder grab overhead travelling crane with grab spreader below the LDA base unit.&lt;/p&gt;\n&lt;p&gt;There are several kinds of spreaders, grabs, electronic suction cups, hanging chains and so on.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;Single girder grab overhead travelling crane is mainly used to grab sand, scrap iron, rubbish, coal some bulk materials, or solid some materials.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/ab87cb00b3a54a973bdaa42eba3d0378.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/ca57daea1ad95595fa969e0ccc73a52d.webp\",\"name\":\"\"}]', 10000, 1, 1731466697, 1732438035, NULL);
INSERT INTO `cmf_product` VALUES (6, 5, 'Suspension Single Girder Overhead Crane', 'Suspension Overhead Crane', 'Single Girder Suspension Crane,Suspension Type Single Girder Overhead Crane,Overhead Suspension Crane,Suspension Overhead Crane,Tramrail Overhead Cranes,Single Girder Suspension Overhead Crane', 'portal/20241124/43eb190a6d36a0f4ed9662470746f0a0.webp', '[{\"url\":\"portal\\/20241124\\/862a72eba5d2329344540917a6d5c950.webp\",\"name\":\"图像 86.webp\"},{\"url\":\"portal\\/20241124\\/6328683d72a1364d9185db42d198997a.webp\",\"name\":\"图像 87.webp\"},{\"url\":\"portal\\/20241124\\/df6606709f45b96ab636051f3c278dc3.webp\",\"name\":\"图像 88.webp\"},{\"url\":\"portal\\/20241124\\/94d921ff82b4052f918962f659655c3e.webp\",\"name\":\"图像 89.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"0.5t\",\"1t\",\"2t\",\"3t\",\"5t\",\"10t\"]', 0.00, 18.00, 1.00, 3.00, 16.00, 1.00, NULL, '[\"A3\",\"A4\",\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'This crane is applicable in factories and warehouses where the height from the rail surface to the lower edge of the truss is equal to or shorter than 500mm.\r\n\r\n​', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;LX electric single-girder suspension crane is composed of girder weld by steel plate and I-steel, end girder, electric hoist and electric treadmill. It can be hung on the l-beam orbit on the top of the workshop,with the cantilever of 0.5-1m long.The electric hoist runs along the lower flanges of the I-steel of the girder to accomplish article hoisting, featuring dexterous structure and easy installation and maintenance. The trolley is equipped with a specific electric hoist that features flexible structure and reliable and safe operation.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '\n&lt;p&gt;This crane is applicable in factories and warehouses where the height from the rail surface to the lower edge of the truss is equal to or shorter than 500mm.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/94d921ff82b4052f918962f659655c3e.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/7a48a76cb8d1acafabbaedd35ca2f710.webp\",\"name\":\"\"}]', 10000, 1, 1731466856, 1732436957, NULL);
INSERT INTO `cmf_product` VALUES (7, 5, 'Explosion proof Single Girder Overhead Crane', 'Explosion proof Overhead Crane', 'Single Girder Explosion Proof Overhead Crane,Explosion-Proof Single Girder Overhead Crane,Eurocrane Ex-proof Overhead Crane,Explosion Proof Overhead Crane,Explosion Proof Cranes', 'portal/20241124/d0fb0862a0b989bda6b6d3d95545f30b.webp', '[{\"url\":\"portal\\/20241124\\/86b5becb3092076dfa8cf73399314af9.webp\",\"name\":\"图像 93.webp\"},{\"url\":\"portal\\/20241124\\/265069dd9f97bafb8c68553a0fefb234.webp\",\"name\":\"图像 94.webp\"},{\"url\":\"portal\\/20241124\\/b1987e8e1de163026704326b7dfac595.webp\",\"name\":\"图像 95.webp\"},{\"url\":\"portal\\/20241124\\/d0aa474d8f49097db52b3fe87978ab09.webp\",\"name\":\"图像 96.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"1t\",\"2t\",\"3t\",\"5t\",\"10t\",\"16t\",\"20t\"]', 0.00, 24.00, 1.00, 7.50, 28.50, 1.00, NULL, '[\"A3\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'This crane adapts to the environment in factory that have explosive gas formed by inflammable gas, steam and air of which explosion proof grade is less than B grade or C grade and ignition group is more than T4 (135℃)group.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;Motor and electrical appliances of this crane are explosion proof type. When explosion proof grade is ExdII CT4, travelling mechanism should do spark proof treatment. The whole machine meets standards of JB/T10219-2001 (Specification for explosion-proof cranes with electric wire rope hoist),explosion proof grade have ExdII BT4 and ExdII CT4 two kinds. It has characteristic of rational construction, perfect appeaance and strong Ex technical performace.&lt;/p&gt;', '&lt;p&gt;This crane adapts to the environment in factory that have explosive gas formed by inflammable gas, steam and air of which explosion proof grade is less than B grade or C grade and ignition group is more than T4 (135℃)group. And the explosion proof electric hoist adapts to 1 area or 2 area, not 0 area.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/338c25e5d0bc086b62aa40674af847bc.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/f02816347c8e3d11fa2e6d822529f281.webp\",\"name\":\"\"}]', 10000, 1, 1731467573, 1732436917, NULL);
INSERT INTO `cmf_product` VALUES (8, 6, 'Hoist Double Girder Overhead Crane', 'Hoist Overhead Crane', '', 'portal/20241124/a22e30376aaf82dd0edbd72df11ff794.webp', '[{\"url\":\"portal\\/20241124\\/27dcd159742f2aeefc13ff59e7a5f47b.webp\",\"name\":\"图像 108.webp\"},{\"url\":\"portal\\/20241124\\/d64b8689d062e7518bd5dd4afb99aa4f.webp\",\"name\":\"图像 109.webp\"},{\"url\":\"portal\\/20241124\\/a2b9e9f6bd5f9595a6b18eceb3103860.webp\",\"name\":\"图像 110.webp\"},{\"url\":\"portal\\/20241124\\/338f4f0e73ebe40d654e24c58a4cfe4f.webp\",\"name\":\"图像 111.webp\"},{\"url\":\"portal\\/20241124\\/85b751201ac1dadeeb0324408583dac6.webp\",\"name\":\"图像 112.webp\"},{\"url\":\"portal\\/20241124\\/2700c716259d779fd90361200199c76a.webp\",\"name\":\"图像 113.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"3t\",\"5t\",\"10t\",\"16t\",\"20t\"]', 0.00, 18.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A3\",\"A4\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'LH double-girder crane is applicable to operational sites of medium and small lifting load such as factories and mines, workshops and warehouses', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;LH double-girder crane with electric hoist consists of box-shaped bridge, trolley travelling mechanism, crab and electric equipment. lt employs fixed electric hoist which is fitted on crab frame as hoisting mechanism. The crab uses LD drive to run, while the trolley adopts LD drive or QD drive. It has three operation modes:ground handle,wireless remote control and cab.The cab has two types: open cab and closed cab.&lt;/p&gt;', '&lt;p&gt;The structure,simple and convenient, features low entire height and light dead weight, so that it is applicable to operational sites of medium and small lifting load such as factories and mines, workshops and warehouses.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/70867f672a26720289a649289a501efc.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/dc858ee3327aff43379563c0d9ec5153.webp\",\"name\":\"\"}]', 10000, 1, 1731468047, 1732436791, NULL);
INSERT INTO `cmf_product` VALUES (9, 6, 'Hook Double Girder Overhead Crane', 'Hook Overhead Crane', 'Double Girder Overhead Crane,Overhead Crane With Hook', 'portal/20241124/96961845003f5cb8f29014ce6b9ea7ca.webp', '[{\"url\":\"portal\\/20241124\\/0534a9e2041388007a559f5e0ab48a44.webp\",\"name\":\"图像 114.webp\"},{\"url\":\"portal\\/20241124\\/4cf2706300efe2055a98554f52ed8cbc.webp\",\"name\":\"图像 115.webp\"},{\"url\":\"portal\\/20241124\\/4c7433610fd9d355048b590bbabd628e.webp\",\"name\":\"图像 116.webp\"},{\"url\":\"portal\\/20241124\\/c4a0c2427ab0a055d6b29a89ebffd89a.webp\",\"name\":\"图像 117.webp\"},{\"url\":\"portal\\/20241124\\/e550031d8ca090866542e6e9ab55b71a.webp\",\"name\":\"图像 118.webp\"},{\"url\":\"portal\\/20241124\\/5615031b903832f01451a96bb26e8e6a.webp\",\"name\":\"图像 119.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\",\"50t\",\"75t\",\"100t\",\"125t\",\"160t\",\"200t\",\"250t\",\"300t\",\"350t\",\"400t\",\"450t\"]', 0.00, 40.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A1\",\"A2\",\"A3\",\"A4\",\"A5\",\"A6\",\"A7\",\"A8\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '-10℃~40℃', 'QD hook bridge crane is suitable to work in factories, warehouses and freight yards where the ambient temperature is-10oC-40oC and the relative humidity is not more than 85%. ', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;QD hook bridge crane is mainly composed of bridge, crane running mechanism, trolley, electrical equipment, etc. QD electric double-girder bridge crane with hook is the widely used hoisting machinery currently. It is mainly comprised of box-shape bridge, crane crab, trolley travelling mechanism and electric control system. The load handling device is the hook. &lt;/p&gt;\n&lt;p&gt;On the girder laid rails for crane crab to transversely move.The girder is weld with the box-shaped end girder. At the middle ot the end girder are joints which are fastened with bolts for fragmented transportation of bridges. The platform is used to place trolley travelling mechanism electric equipment and used for repair &lt;/p&gt;\n&lt;p&gt;It has three operation modes:ground handle, wireless remote control and cab.There are two kinds of cab: open cab and closed cab, where there are adjustable seat, insulating mat on the floor,toughened glass for the window, fire extinguisher, electric fan and auxiliary equipment such as air conditioner,acoustic alarm and interphone which can be furnished as required by users. &lt;/p&gt;\n&lt;p&gt;This crane operation is completed in driver\' s chamber.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;it is suitable to work in factories, warehouses and freight yards where the ambient temperature is-10oC-40oC and the relative humidity is not more than 85%. It is prohibited to work in the environment with inflammable,explosive and corrosive gas. The crane can be furnished with load handling devices such as motor grab, electromagnetic chuck to meet the requirements of hoisting varied types of materials.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/f51da2f0278d62a28f349c7af48e6790.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/8c587c299833e21aeaf76b905aec4bef.webp\",\"name\":\"\"}]', 10000, 1, 1731468733, 1732436717, NULL);
INSERT INTO `cmf_product` VALUES (10, 6, 'Grab Double Girder Overhead Crane', 'Grab Double Girder Overhead Crane', 'grab bucket overhead crane,Double Girder Bridge Crane with Grab,Double Girder Overhead Crane with Grab,Grab Overhead Cranes &amp; Grab Bridge Crane', 'portal/20241124/8b975f235cacf9f1999861f43af3852c.webp', '[{\"url\":\"portal\\/20241124\\/6d0ee88e06f38a93922c3bc59ea8bb35.webp\",\"name\":\"图像 118.webp\"},{\"url\":\"portal\\/20241124\\/be6ef2cd43e4459e04bbc41ed5f0f3aa.webp\",\"name\":\"图像 119.webp\"},{\"url\":\"portal\\/20241124\\/dbbbbe3feaba9f1f06c5a6ac9fa0915f.webp\",\"name\":\"图像 120.webp\"},{\"url\":\"portal\\/20241124\\/3efa65eec2b9b1116efaeb86c35e2e3d.webp\",\"name\":\"图像 121.webp\"},{\"url\":\"portal\\/20241124\\/6308bd17aa22e0ba28ead532b7c67b98.webp\",\"name\":\"图像 122.webp\"},{\"url\":\"portal\\/20241124\\/3e2daad5626cab89d66f7a0956a5fc40.webp\",\"name\":\"图像 123.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\"]', 0.00, 26.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A6\"]', '[{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'The load handling device is the grab which is able to capture bulk materials.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;QZ electric grab bridge crane is mainly comprised of box-shaped bridge, grab crab, trolley travelling mechanism, cab and electric control system. The grab crab has switching mechanism and lifting mechanism. The grabs are separately hung over the switching mechanism and lifting mechanism with four steel wire ropes. The switching mechanism drives the grab to close to grab materials. When the grab is closed, the lifting mechanism shall be started immediately to hoist the four evenly loaded steel wire ropes. Discharging onl needs to start the switching mechanism, which opens the grab to pour materials. &lt;/p&gt;\n&lt;p&gt;Except the lifting mechanism, the crane is basically the same as the bridge crane with hook.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;The load handling device is the grab which is able to capture bulk materials.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/8924e67ffd330ef067af85def4155473.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/d672df33058d434298a9505a1f88a7f4.webp\",\"name\":\"\"}]', 10000, 1, 1731468896, 1732436487, NULL);
INSERT INTO `cmf_product` VALUES (11, 6, 'Magnet Double Girder Overhead Crane', 'Magnet Overhead Crane', 'electric double girder overhead crane with magnet,Overhead Crane with Electromagnetic Beam Spreader,Double Girder Electromagnetic Overhead crane,Magnetic Overhead Crane,Steel Mill Cranes,Magnetic Overhead Crane for Lifting Steel Scraps,Coil, Plate &amp; Pipe,Electromagnetic Overhead Crane', 'portal/20241124/fd920a0b3e17f294a6bd09c4b2487b03.webp', '[{\"url\":\"portal\\/20241124\\/6c7eb866090fb6ba8f433c4761739685.webp\",\"name\":\"图像 134.webp\"},{\"url\":\"portal\\/20241124\\/a86184f903894c6c65bcd669a7a2cabb.webp\",\"name\":\"图像 135.webp\"},{\"url\":\"portal\\/20241124\\/f0304af4e18dad9f324b860f22b37f91.webp\",\"name\":\"图像 136.webp\"},{\"url\":\"portal\\/20241124\\/24c7943140c64539cb792a09ae0546f5.webp\",\"name\":\"图像 137.webp\"},{\"url\":\"portal\\/20241124\\/0ec6ab7e9e8f86272fd9b4cc9eec979e.webp\",\"name\":\"图像 138.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\"]', 0.00, 18.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A6\"]', '[{\"url\":\"admin\\/20241113\\/824a82b72ea134766c71f846ea44c2ae.png\",\"active_url\":\"admin\\/20241113\\/6ff397a380eb350f33cc45efd876b272.png\",\"name\":\"Magnetic chuck\"}]', '', 'Double girder electromagnetic overhead crane can be used in metallurgical plants or steel plants.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;The direction of walkway door to the controlling room is end, side and top. The lifting capacity includes the dead weight of electromagnetic disk. When used,the rotary part of the hook of electromagnetic disk must be locked up with screws and no rotation is allowed.&lt;/p&gt;', '&lt;p&gt;Double girder electromagnetic overhead crane is a crane that uses magnet  to carry steel products. Turn on the current, absorb the magnet steel items, and transport them to the designated location. When the current is cut off, the magne force disappears and the steel product falls. Magnetc cranes are very convenient to use, but must be used with electric current. It can be used in metallurgical plants or steel plants. Double girder electromagnetic overhead crane can generate strong magnetic field force. Steel billets, steel coils, steel bars, scrap iron and various other iron materials weighing tens of tons are very convenient for handling and storage.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/dacdbe8ea331ab2f1aeb0f5373177fb5.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/47c9f1d34291b435e5f9318b70f6c712.webp\",\"name\":\"\"}]', 10000, 1, 1731469052, 1732436446, NULL);
INSERT INTO `cmf_product` VALUES (12, 6, 'Hang Beam Double Girder Overhead Crane', 'Hang Beam Overhead Crane', '', 'portal/20241124/4d737ed661c807fa58ba72c1432908a8.webp', '[{\"url\":\"portal\\/20241124\\/489e22300b03694e1fe7119eb5bd1519.webp\",\"name\":\"图像 143.webp\"},{\"url\":\"portal\\/20241124\\/6c7eb866090fb6ba8f433c4761739685.webp\",\"name\":\"图像 144.webp\"},{\"url\":\"portal\\/20241124\\/70a0eede2445c4925e1f7f44aa255bb9.webp\",\"name\":\"图像 145.webp\"},{\"url\":\"portal\\/20241124\\/0ec6ab7e9e8f86272fd9b4cc9eec979e.webp\",\"name\":\"图像 146.webp\"},{\"url\":\"portal\\/20241124\\/198f5280f21b91251515c02b9106043a.webp\",\"name\":\"图像 147.webp\"},{\"url\":\"portal\\/20241124\\/72ea4397d5dceca48033d63fc6fbc65e.webp\",\"name\":\"图像 151.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"15t\",\"20t\",\"32t\",\"40t\",\"50t\"]', 0.00, 16.00, 1.00, 10.50, 34.00, 1.00, NULL, '[\"A5\",\"A6\",\"A7\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/824a82b72ea134766c71f846ea44c2ae.png\",\"active_url\":\"admin\\/20241113\\/6ff397a380eb350f33cc45efd876b272.png\",\"name\":\"Magnetic chuck\"}]', '', 'The crane is suitable for loading, unloading and handling steel plates, section steels,coils and other materials in indoor or outdoor fixed spans of steel plants, shipyards, ports, storage yards and warehouses.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;This crane is equipped with a rotatable electromagnetic hanging beam, which is used for loading, unloading and handling steel plates, section steels, coils and other materials in steel plants, shipyards, ports, storage yards and other indoor or outdoor fixed spans. According to the user\'s requirements, it can provide:speed regulation (1:10 or greater),overload and alarm, remote control, PLC Control and fault detection, display, recording and printing systems of each mechanism.&lt;/p&gt;', '&lt;p&gt;The crane is equipped with a rotatable hanging beam, which is suitable for loading, unloading and handling steel plates, section steels,coils and other materials in indoor or outdoor fixed spans of steel plants, shipyards, ports, storage yards and warehouses. QL bridge crane with carrier-beam is applícable to hoisting long section steel,bars, plates,scrap steel, mill coil and so on. The hook and carrier-beam are releasable connection,They are furnished with electromagnetic chuck or clincher or special group hook underneath to hoist things. There two layout forms of carrier-beam: perpendicular to the girder or parallel to the girder. It has certain anti swing function.Special lifting appliances such as electromagnetic suction cups and clamps can be carried under the hanging beam.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/6c652a47518d17597c622353a09c91d5.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/080a4d9e94d2290fda49e33082c8ffcd.webp\",\"name\":\"\"}]', 10000, 1, 1731469218, 1732436409, NULL);
INSERT INTO `cmf_product` VALUES (13, 6, 'Double Trolley Hook Overhead Crane', 'Double Trolley Overhead Crane', 'Overhead Crane with Double Trolley', 'portal/20241124/2b47a091f87850787a2eb4b47f7ce7ae.webp', '[{\"url\":\"portal\\/20241124\\/a87b73bbe13e4eb593f9607f46a22baa.webp\",\"name\":\"图像 153.webp\"},{\"url\":\"portal\\/20241124\\/03071dac9e65deebde4feba762697f1b.webp\",\"name\":\"图像 154.webp\"},{\"url\":\"portal\\/20241124\\/51cbadf8d4f4742309e6abbceab3d526.webp\",\"name\":\"图像 155.webp\"},{\"url\":\"portal\\/20241124\\/987fed719a437e889cc38960c7d09a72.webp\",\"name\":\"图像 156.webp\"},{\"url\":\"portal\\/20241124\\/604de30ef358ca8b378d499955f6592c.webp\",\"name\":\"图像 157.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"10t\",\"20t\",\"32t\"]', 0.00, 16.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A4\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'This crane is suitable to lift long materials(wood, paper tube, pipe and bar)in workshops or outdoor stores in factories and mines. \r\n\r\n', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;With two trolleys that works simultaneously or separately, this crane is suitable to lift long materials(wood, paper tube, pipe and bar)in workshops or outdoor stores in factories and mines. Power supply for the main vehicle can be either through angle steel or safety slide wire, Operation can be done in the cabin(open-type and closed-type), on the ground or through remote control.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '\n&lt;p&gt;This crane is suitable to lift long materials(wood, paper tube, pipe and bar)in workshops or outdoor stores in factories and mines. Designed for general purposes, this overhead crane cannot be applied in hazardous environments, such as explosive and flammable atmosphere, corrosive substances and high heat environment.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/13b41298a97cf7ff4141b682a2afc814.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/c9a2494da621d47246e0c9797600ce78.webp\",\"name\":\"\"}]', 10000, 1, 1731469456, 1732436358, NULL);
INSERT INTO `cmf_product` VALUES (14, 6, 'Explosion Proof Double Girder Overhead Crane', 'Explosion Proof Overhead Crane', 'Double Girder Explosion Proof Bridge Crane', 'portal/20241124/06bd08bea480d7ef37337d2c67eb863e.webp', '[{\"url\":\"portal\\/20241124\\/723cd021f5ece6de88582ac927187e11.webp\",\"name\":\"图像 161.webp\"},{\"url\":\"portal\\/20241124\\/d8e786df15cb9873c0771f07cb01a3f7.webp\",\"name\":\"图像 162.webp\"},{\"url\":\"portal\\/20241124\\/dd8c30be3ceca94c0370d16bbe3a11c5.webp\",\"name\":\"图像 163.webp\"},{\"url\":\"portal\\/20241124\\/a322ab8ab52a638548f9a487f794674c.webp\",\"name\":\"图像 164.webp\"},{\"url\":\"portal\\/20241124\\/b989741e933a7f9cc9cc223822c400dc.webp\",\"name\":\"图像 165.webp\"},{\"url\":\"portal\\/20241124\\/a582a5f3f65ff64d43bf146b92a60ede.webp\",\"name\":\"图像 166.webp\"},{\"url\":\"portal\\/20241124\\/c2ca16bb5032ca0b5feb098660bb110e.webp\",\"name\":\"图像 167.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\",\"50t\"]', 0.00, 18.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A3\",\"A4\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'This product is suitable for areas where the explosion.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;Explosion-proof performances of all motors and electric components of QB explosion-proof crane satisfy standards stipulated by GB3836.2 Explosion-proof Electric Equipment Working in Explosive Gas Envircmment Part2: Flame-proof Type&quot;D&quot;,and the performance of the crane satisfies demands in JB/T5897 Explosion-proof Crane. The crane has obtained Explosion-proof Certificate after passing examinations by units designated by the government to test explosion-proof products. The explosion-proof marks are Exd II BT4 and Exd II CT4 respectively. This product is generally controlled on the ground,but control from the driver\' s cabin is also allowable.&lt;/p&gt;', '&lt;p&gt;This product is suitable for areas where the explosion. transmission is not higher than Il B or Il C and the ignition temperature group of inflammable gas or explosive mixture of steam and gas is not lower than T4. Applicable dangerous zones are zone 1 and zone 2&lt;/p&gt;', '[{\"url\":\"portal\\/20241124\\/01541c3ee25d5bdffb75ffb3620678ac.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/024ad45345693432290ff77866a68e77.webp\",\"name\":\"\"}]', '[{\"url\":\"portal\\/20241124\\/01541c3ee25d5bdffb75ffb3620678ac.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/024ad45345693432290ff77866a68e77.webp\",\"name\":\"\"}]', 10000, 1, 1731469880, 1732437965, NULL);
INSERT INTO `cmf_product` VALUES (15, 6, 'Insulation Double Girder Overhead Crane', 'Insulation Overhead Crane', 'Isolation crane,Insulation Overhead Crane,Insulation Overhead Crane for Smelting Workshops,Insulation type of double girder overhead crane', 'portal/20241124/81a5c794d57cdcbb3b548ec08ee1cf9a.webp', '[{\"url\":\"portal\\/20241124\\/a8025b85f2764bef3d8eb404c1fb5449.webp\",\"name\":\"图像 166.webp\"},{\"url\":\"portal\\/20241124\\/64d81b499f656ec3a25b93e48c152fa5.webp\",\"name\":\"图像 167.webp\"},{\"url\":\"portal\\/20241124\\/44b069796d7e2b80a48812aeabbe3ca0.webp\",\"name\":\"图像 168.webp\"},{\"url\":\"portal\\/20241124\\/e3016f423b3a89145b0b5d5fc857e69f.webp\",\"name\":\"图像 169.webp\"},{\"url\":\"portal\\/20241124\\/2853dba1064da33ff494dc9b24a5a77a.webp\",\"name\":\"图像 170.webp\"},{\"url\":\"portal\\/20241124\\/185adadc3331bbeb08f752637bf7a9d3.webp\",\"name\":\"图像 171.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\"]', 0.00, 18.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A6\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'The crane is applicable to aluminum and magnesium smelting factories.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;QY overhead isolation crane\'is basically the same as bridge crane with hook in terms of structural style. To avoid the charged equipment which may conduct electricity to the crane by hoisted articles from endangering the driver\' s life, insulation equipment is set on the hook group, crab frame,crab wheel (or under the crab rails). The insulation material is usually epoxy phenol aldehyde glass cloth laminated board.&lt;/p&gt;', '&lt;p&gt;The crane is applicable to aluminum and magnesium smelting factories.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/c7d91e78c7cd9d50c4ab1da980f72760.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/10763313528b2add39749a1ae38a8765.webp\",\"name\":\"\"}]', 10000, 1, 1731470005, 1732436194, NULL);
INSERT INTO `cmf_product` VALUES (16, 6, 'Grab and Magnet Two Purpose Bridge Crane', 'Grab, Magnet Two Purpose Bridge Crane', 'Special bridge crane with a magnet and a grab,Double Uses Overhead Crane with Hook/Grab/Magnet', 'portal/20241124/4eea75d85a6334d09e7cee2c20bd6b37.webp', '[{\"url\":\"portal\\/20241124\\/0b73184ecb67c11ffc06825a4966fe33.webp\",\"name\":\"图像 104.webp\"},{\"url\":\"portal\\/20241124\\/4e13595444da8012044d06fb7d3e7b01.webp\",\"name\":\"图像 105.webp\"},{\"url\":\"portal\\/20241124\\/458b55fde4b7aa1e3e2aa73d6371345a.webp\",\"name\":\"图像 106.webp\"},{\"url\":\"portal\\/20241124\\/3e2daad5626cab89d66f7a0956a5fc40.webp\",\"name\":\"图像 107.webp\"},{\"url\":\"portal\\/20241124\\/8b2f3f9e199dea10707e4ace02137a35.webp\",\"name\":\"图像 108.webp\"},{\"url\":\"portal\\/20241124\\/df822097e86c334dcce88304a786dab2.webp\",\"name\":\"图像 109.webp\"},{\"url\":\"portal\\/20241124\\/b923448aa438eb755cc3b04e2aebdd4c.webp\",\"name\":\"图像 112.webp\"},{\"url\":\"portal\\/20241124\\/d2dc14cf0f241236bccf0ed2a29d3985.webp\",\"name\":\"图像 113.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\"]', 0.00, 22.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A6\"]', '[{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"},{\"url\":\"admin\\/20241113\\/824a82b72ea134766c71f846ea44c2ae.png\",\"active_url\":\"admin\\/20241113\\/6ff397a380eb350f33cc45efd876b272.png\",\"name\":\"Magnetic chuck\"}]', '', 'A two purpose overhead crane with both a grab and a magnet is a specialized type of crane designed for handling materials that require both grabbing and magnetic lifting capabilities.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;These cranes are typically double girder overhead cranes that can be customized to accommodate various lifting needs, such as using a grab bucket or a magnet for different types of materials.&lt;/p&gt;', '&lt;p&gt;A two purpose overhead crane with both a grab and a magnet is a specialized type of crane designed for handling materials that require both grabbing and magnetic lifting capabilities.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/55114f3b2512f202748ae002656c91b7.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/f32d710f34322a56e3564870b9cadca9.webp\",\"name\":\"\"}]', 10000, 1, 1731478454, 1732436152, NULL);
INSERT INTO `cmf_product` VALUES (17, 6, 'Two Purpose Bridge Crane Include Grab and Hook', 'Grab, Hook Overhead/Bridge Crane', 'two purpose double girder overhead crane with grab &amp; hook, Grab and Hook Two Purpose Overhead Crane, Double-girder 2-purposes Crane With Grab And Magnet,  Grab and Magnet Two Purpose Bridge/Overhead Traveling Crane', 'portal/20241124/4c0d56b7d76162ac967da40e8dbd9d3e.webp', '[{\"url\":\"portal\\/20241124\\/2a5f972654117249bc87355323748b3c.webp\",\"name\":\"图像 107.webp\"},{\"url\":\"portal\\/20241124\\/3b3a3d679ee6d3c172b672611ee58ef5.webp\",\"name\":\"图像 108.webp\"},{\"url\":\"portal\\/20241124\\/25357d90da2988f31cd328cdb025689a.webp\",\"name\":\"图像 109.webp\"},{\"url\":\"portal\\/20241124\\/f451c92eab52550290341fc333c052f1.webp\",\"name\":\"图像 110.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\"]', 0.00, 22.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A6\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'Grab crane bridge crane is widely used in ports, power plants, port, chemical industry, grasping all kinds of loose debris', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;Overload limiter, limit switch (lifting and traveling), interlocking protection devices, buffer, track sweep plate, shield, bus bar protection board, anti collision device, main disconnecting switch, emergency stop system and motor overload protection.&lt;/p&gt;', '&lt;p&gt;Grab crane bridge crane, port machinery, primarily due to hinge is used together with the car, is widely used in ports, power plants, port, chemical industry, grasping all kinds of loose debris, such as: ore, coal, slag heap for loading, unloading, such as light, such as charging operation.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/f451c92eab52550290341fc333c052f1.webp\",\"name\":\"\"}]', 10000, 1, 1731478571, 1732436097, NULL);
INSERT INTO `cmf_product` VALUES (18, 8, 'L typed Single Girder Hoist Gantry Crane with a hoist', 'L Hoist Gantry Crane', 'Single Girder Gantry Crane with Trolley,Single Girder Gantry Crane,Single Beam Gantry Crane with Electric Wire Rope Hoist,With Electric Hoist Single Girder Electric Traveling Gantry Crane', 'portal/20241124/0098920ef96fc59b5f6d8a28cf749316.webp', '[{\"url\":\"portal\\/20241124\\/8ed379835e7205635d4ce965a7af2174.webp\",\"name\":\"图像 216.webp\"},{\"url\":\"portal\\/20241124\\/ae0c1e3840800971969c165736055f94.webp\",\"name\":\"图像 217.webp\"},{\"url\":\"portal\\/20241124\\/4950c3678dfb171cc5a7432a003165f9.webp\",\"name\":\"图像 218.webp\"},{\"url\":\"portal\\/20241124\\/70dd33b61553ed2ca3abdcfb9cb00846.webp\",\"name\":\"图像 219.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\",\"50t\"]', 0.00, 21.00, 1.00, 18.00, 35.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'L type single girder gantry crane with hoist is applied for handling and convey operation outdoors, or at warehouse, stock ground, railway station, sea port cargo area, etc.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;L gantry crane is mainly composed of gantry, crane crab, trolley travelling mechanism, cab and electric control system. &lt;/p&gt;\n&lt;p&gt;The gantry is of a box-shape structure.The crab adopts vertical reaction wheel when the lifting load is below 20t, and horizontal reaction wheel when above 20t to run at the girder side.The girder is of single-girder bias track and the leg is L-shaped SO that the lifting space is large and the spanning ability is strong, making it easy to Covey articles from the span to under the jib. &lt;/p&gt;\n&lt;p&gt;The closed cab is employed for operation, where there are adjustable seat, insulating mat on the floor, toughened glass for the window, fire extinguisher, electric fan and auxiliary equipment such as air conditioner,acoustic alarm and interphone which can be furnished as required by users. Simple structure and smaller weight and price. &lt;/p&gt;\n&lt;p&gt;Simple erection:sill beam and leg are bo Ited main girderis on leg hangbeamand hoist is under slot steel. &lt;/p&gt;\n&lt;p&gt;Operation control is safe and ground con trol and hook speedis conveniently controlled to corer work area&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;L type single girder gantry crane with hoist is applied for handling and convey operation outdoors, or at warehouse, stock ground, railway station, sea port cargo area, etc.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/9c688ba861318346b6c8426ef6c66100.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/d7c48c8d944c1fdc9e2d1f8a9ba3a59c.webp\",\"name\":\"\"}]', 10000, 1, 1731480314, 1732437418, NULL);
INSERT INTO `cmf_product` VALUES (19, 8, 'L typed Single Girder Hook Gantry Crane with a winch', 'L Hook Gantry Crane', 'Overhead Hook Crane &amp; Hook Gantry Crane,Single Girder Gantry Crane,L-type leg single beam traveling single speed electric wire rope hoist gantry crane,single beam gantry crane equipped with off-track winch trolley,L-shaped outrigger single-beam gantry crane', 'portal/20241124/1e6f7a2d83aab6352970f59436c99e27.webp', '[{\"url\":\"portal\\/20241124\\/5637aebe20e4bdc2960e8efa4ab2e207.webp\",\"name\":\"图像 227.webp\"},{\"url\":\"portal\\/20241124\\/5d9b232790723078f3001cc1ffbf1832.webp\",\"name\":\"图像 228.webp\"},{\"url\":\"portal\\/20241124\\/d6e3c3e884a5d4c697e2d5b6fc532b5e.webp\",\"name\":\"图像 229.webp\"},{\"url\":\"portal\\/20241124\\/18210f5e7ac9785377b6946492ca045b.webp\",\"name\":\"图像 230.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\",\"50t\"]', 0.00, 28.50, 1.00, 18.00, 35.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'This product is suitable for general loading and unloading and lifting and carrying work in open places.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;This crane all adopts box structure, the main girder is single main girder trolley adopts anti-roller device, the lower crossbeam is equipped with rail clamp, this product belongs to intermediate working system.&lt;/p&gt;', '&lt;p&gt;This product is suitable for general loading and unloading and lifting and carrying work in open places.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/ae0c1e3840800971969c165736055f94.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/9c688ba861318346b6c8426ef6c66100.webp\",\"name\":\"\"}]', 10000, 1, 1731480682, 1732437381, NULL);
INSERT INTO `cmf_product` VALUES (20, 8, 'Single Girder Hoist Semi Gantry Crane', 'Hoist Semi Gantry Crane', 'single girder semi gantry crane with single leg design &amp; European style,European Style Semi-Gantry Crane  with single girder design,Single Girder Semi Gantry Crane,Single Leg Gantry Crane Design,Single Girder Semi Portal Crane', 'portal/20241124/72aa18993245fff5626029c225955c2d.webp', '[{\"url\":\"portal\\/20241124\\/ec36adf24d26f51dd0145d4b59f69a2f.webp\",\"name\":\"图像 228.webp\"},{\"url\":\"portal\\/20241124\\/5f91bce75ad897fafcb905f9ae0ea2ec.webp\",\"name\":\"图像 229.webp\"},{\"url\":\"portal\\/20241124\\/346276c668ce46ebf94c200f1128888f.webp\",\"name\":\"图像 230.webp\"},{\"url\":\"portal\\/20241124\\/488658a8d33da4eba475bb3842a4cc1b.webp\",\"name\":\"图像 231.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"2t\",\"3t\",\"5t\",\"10t\",\"16t\"]', 0.00, 6.00, 1.00, 5.00, 20.00, 1.00, NULL, '[\"A4\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '-20℃~40℃', 'Semi-gantry cranes are mainly used in steel, forest products, intermodal, biomass/pellet, concrete and many other industries.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;MB semi-gantry crane with electric hoist &lt;/p&gt;\n&lt;p&gt;The semi-gantry crane with electric block,a type of middle- and small-size lifting equipment which runs along rails, is mainly composed of gantry (girder,leg, lower cross beam etc.), hoisting mechanism, travelling mechanism and electric control part.With the electric hoist as hoisting mechanism, it runs along the lower flange of the I-steel of the girder. The gantry has a leg at its one side and runs along the ground rails, and has no leg at the other side and runs along the rails on the factory workshop.The rest structure and configuration are the same as the MH gantry crane with elecıric block.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;BMH(G) type semi gantry crane is widely used in open warehouse,mechanical processing workshop, outdoor place for loads lifting and transporting. Semi-gantry cranes are mainly used in steel, forest products, intermodal, biomass/pellet, concrete and many other industries, both indoor and outdoor are suitable. If used outdoor, sometimes, semi gantry cranes will be equipped with truss type outriggers.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/b4223ce1e1a8af44e3bf7393769774a8.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/af93bbad2078b7fe5dbd5caec40ad0eb.webp\",\"name\":\"\"}]', 10000, 1, 1731481237, 1732437265, NULL);
INSERT INTO `cmf_product` VALUES (21, 8, 'A typed Single Girder Hoist Gantry Crane', 'Single Girder Hoist Gantry Crane', 'Gantry Crane with Electric Hoist,Single Girder Gantry Crane (Truss-type),Single Girder Gantry Crane with Hoist of DJCRANES,Single Girder Electric Hoist Gantry Crane', 'portal/20241124/4e691e59a2aa999a73af415e9ff5419a.webp', '[{\"url\":\"portal\\/20241124\\/5eab5881772ec189f818fb0e2fbe523c.webp\",\"name\":\"图像 231.webp\"},{\"url\":\"portal\\/20241124\\/2d899323a237b9f15ff678a60e9cc5b1.webp\",\"name\":\"图像 232.webp\"},{\"url\":\"portal\\/20241124\\/6d43e4b45dbea1d8036d0c6e84698110.webp\",\"name\":\"图像 233.webp\"},{\"url\":\"portal\\/20241124\\/041c8db09975f7733d88c28e03758b44.webp\",\"name\":\"图像 234.webp\"},{\"url\":\"portal\\/20241124\\/e60e938cabd2273ece27e265a953085d.webp\",\"name\":\"图像 235.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"3t\",\"5t\",\"10t\",\"16t\",\"20t\"]', 0.00, 9.00, 1.00, 12.00, 30.00, 1.00, NULL, '[\"A3\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '-20℃~40℃', 'This product is  widely used at open ground and warehouses to load,unload or grab materials. ', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;MH Model Electric Hoist Girder Gantry Crane is used together with CD MD Model electrichoists. It is a track travelling small and medium-sized crane. Its proper Lifting weight is 3 to 20tons. Proper span is 12 to 30 meters, its proper working temperature is-20℃ to 40℃.&lt;/p&gt;', '&lt;p&gt;This product is a regular crane widely used at open ground and warehouses to lqad,unload or grab materials. It has two controlling methods,namely ground,controlling and room controlling&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/706683b79a71a9b4c957457f6dfd2a8b.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/82801ea1990bc6e5b14d93acf8ac5def.webp\",\"name\":\"\"}]', 10000, 1, 1731481442, 1732437222, NULL);
INSERT INTO `cmf_product` VALUES (22, 5, 'Flexible Crane', 'Flexible Crane', 'modular crane,light crane,suspension cranes,Monorail cranes,suspension monorails,Monorail Crane System,individual suspension monorail, suspension crane, Workstation Cranes,Freestanding Cranes,Freestanding Workstation Overhead Bridge Cranes,', 'portal/20241124/c79b86fc71324a28dfef9c3d41e2c8d9.webp', '[{\"url\":\"portal\\/20241124\\/f5029495bf3b13c1ae5081da63d838f6.webp\",\"name\":\"图像 58.webp\"},{\"url\":\"portal\\/20241124\\/17710c2298e823d4d3ba5171e8d2e539.webp\",\"name\":\"图像 59.webp\"},{\"url\":\"portal\\/20241124\\/f4b7cfc1020864b3539087ba08f553fb.webp\",\"name\":\"图像 60.webp\"},{\"url\":\"portal\\/20241124\\/f77d11b8ed055dca8a3bc0a089065d1a.webp\",\"name\":\"图像 61.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"0.15t\",\"0.25t\",\"0.45t\",\"0.5t\",\"0.75t\",\"1t\",\"1.5t\",\"2t\",\"2.5t\",\"3t\"]', 0.00, 30.00, 1.00, 1.00, 31.50, 1.00, NULL, '[\"A3\",\"M3\",\"M4\",\"M5\",\"M6\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'It is suitable for conveyor/product/industrial lines in general workshops/warehouses and modern production.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;KBK cranes are characterised by their small size and very simple shape, horizontal and vertical. The layout is also very simple, requiring only a few columns. The space is also relatively independent, will not affect the work of other spaces in the plant. Above him hangs a complete KBK crane system, which can reach any desired position. In addition, the economy is also better than the crane,  very frugal. Comparing in terms of low cost/economy and later practicality, KBK is very convenient.&lt;/p&gt;', '\n&lt;p&gt;It is suitable for conveyor/product/industrial lines in general workshops/warehouses and modern production.&lt;/p&gt;\n&lt;p&gt;KBK crane systems are very widely used in modernised Foxconn/electronics factories/automotive industry/manufacturing industry. Very modern gallery arrangement, the requirements of high space utilisation, the production line layout is very scientific, the industrial product line closed loop.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/a8d3ff534473b3ffbcb01dc900055174.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/6436e6462c53acdd6e3dddbc311e508c.webp\",\"name\":\"\"}]', 10000, 1, 1731490093, 1732436872, NULL);
INSERT INTO `cmf_product` VALUES (24, 7, 'New Types Double Girder Overhead Crane', 'European double girder overhead crane', '', 'portal/20241124/07cbee12facb8a413bb0d4993f71072e.webp', '[{\"url\":\"portal\\/20241124\\/1bac5ca48bd87ae37cf070123a11254f.webp\",\"name\":\"图像 191.webp\"},{\"url\":\"portal\\/20241124\\/a12d89594e9ff08263cd4c24cae28381.webp\",\"name\":\"图像 192.webp\"},{\"url\":\"portal\\/20241124\\/7fbccb9dd254169e958387fc83a3d3a2.webp\",\"name\":\"图像 193.webp\"},{\"url\":\"portal\\/20241124\\/5665db0e5d503ab7b64797f4deffa4c1.webp\",\"name\":\"图像 194.webp\"},{\"url\":\"portal\\/20241124\\/e6dc39a0f45897a5f9bc8bd84d20f0f0.webp\",\"name\":\"图像 195.webp\"},{\"url\":\"portal\\/20241124\\/690822ef0d723e8d29a204e1dcdb96ea.webp\",\"name\":\"图像 196.webp\"},{\"url\":\"portal\\/20241124\\/8c874d3ce2f3384a07f29e415da70417.webp\",\"name\":\"图像 197.webp\"},{\"url\":\"portal\\/20241124\\/48cdebd051107778c4a60e5caef4da36.webp\",\"name\":\"图像 198.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"25t\",\"32t\",\"40t\",\"50t\",\"63t\",\"80t\"]', 0.00, 30.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A3\",\"A5\",\"A6\",\"A7\",\"A8\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'The European overhead crane is suitable for machinery manufacturing and assembly, petrochemical, warehousing and logistics, power construction, paper industry, railway and other industries.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;Based on bringing in and assimilating foreign advanced technology,this type of crane takes modular design theories as guidance,uses modern computer technology as means,introduces optimized and reliable design methods,which is new type of crane made by employing import configuration,new material and technology and has features in light-weight,generalizing,energy- conservation and environmental protection,maintenance free and high technology content.&lt;/p&gt;\n&lt;p&gt;The design of hoisting mechanism strictly carries out the relevant standards of FEM.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;The European overhead crane is suitable for machinery manufacturing and assembly, petrochemical, warehousing and logistics, power construction, paper industry, railway and other industries.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/cb10dad1f2f2114770012753c3ec40f2.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/82c44ebf1345e167be7a1709e8fe255a.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/1138f5b1eea6d9feea761734f4c8bed1.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/b927b0386096843df45e9e3bb8456de6.webp\",\"name\":\"\"}]', 10000, 1, 1731549897, 1732437892, NULL);
INSERT INTO `cmf_product` VALUES (25, 7, 'New Types Heavy Duty Double Girder Overhead Crane', 'New Types Heavy Duty Overhead Crane', 'European double girder overhead crane', 'portal/20241124/6d49b031f2f2b761f9480f4899bd4ae9.webp', '[{\"url\":\"portal\\/20241124\\/24e41febca9ae1f7308bc7802597add8.webp\",\"name\":\"图像 207.webp\"},{\"url\":\"portal\\/20241124\\/cb10dad1f2f2114770012753c3ec40f2.webp\",\"name\":\"图像 208.webp\"},{\"url\":\"portal\\/20241124\\/48cdebd051107778c4a60e5caef4da36.webp\",\"name\":\"图像 209.webp\"},{\"url\":\"portal\\/20241124\\/6aae52f05f894579a60ad4eb494cc2cc.webp\",\"name\":\"图像 210.webp\"},{\"url\":\"portal\\/20241124\\/3af55e01c72dc3643d456c5faaeaa173.webp\",\"name\":\"图像 211.webp\"},{\"url\":\"portal\\/20241124\\/9a68612d97529a830e2d0982e6b18866.webp\",\"name\":\"图像 212.webp\"},{\"url\":\"portal\\/20241124\\/7a4fd0e0ac748032bd929726186c4865.webp\",\"name\":\"图像 213.webp\"},{\"url\":\"portal\\/20241124\\/a6355866eb7008b773ca44cf13ea8f13.webp\",\"name\":\"图像 214.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"15t\",\"16t\",\"20t\",\"25t\",\"30t\",\"32t\",\"35t\",\"40t\",\"45t\",\"50t\",\"60t\",\"70t\",\"75t\",\"80t\",\"90t\",\"100t\",\"120t\",\"150t\",\"200t\",\"250t\",\"320t\",\"400t\",\"450t\"]', 0.00, 30.00, 1.00, 7.50, 52.00, 1.00, NULL, '[\"A3\",\"A4\",\"A5\",\"A6\",\"A7\",\"A8\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'It is applied in industry of machinery production, assembling, petrochemicals, warehouse logistics, electric power construction, papermaking and railways.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p style=&quot;text-align: left;&quot;&gt;KSQ type bridge crane design,production and inspection carry out the last issued relevant national standard, equivalently adopts some foreign criteria including FEM, DIN and IEC. Compared with the general QD type bridge crane, its weight is reduced by about 15~30%, the maximum wheel pressure is reduced by about 10~35%, which can the requirements of crane for factory building structure and reduce production cost. As the core component of driving mechanism, reducer gear pair with hard tooth surface and high precision gear set, forged wheel and variable-frequency speed regulating system, which makes this type of crane become renewal product of traditional general bridge crane&lt;/p&gt;', '\n&lt;p&gt;It is applied in industry of machinery production, assembling, petrochemicals, warehouse logistics, electric power construction, papermaking and railways.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/caaf063118db36db74a91f9b0955f1e8.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/a12d89594e9ff08263cd4c24cae28381.webp\",\"name\":\"\"}]', 10000, 1, 1731550122, 1732437878, NULL);
INSERT INTO `cmf_product` VALUES (26, 9, 'Rubber Tyre Container Crane', 'Rubber Tyre Container Crane', 'Rubber Tyred Container Gantry Crane,Rubber-Tired Gantry Cranes', 'portal/20241124/6b4a12bd8eb242da6c27e83c065554f6.webp', '[{\"url\":\"portal\\/20241124\\/2c9636e1fde42de048f70c908292c3b5.webp\",\"name\":\"图像 242.webp\"},{\"url\":\"portal\\/20241124\\/2da9f2d9dc8add4a2544a71656c30a5f.webp\",\"name\":\"图像 243.webp\"},{\"url\":\"portal\\/20241124\\/2548b34b3c2c44f01d68e9699b947ab3.webp\",\"name\":\"图像 244.webp\"},{\"url\":\"portal\\/20241124\\/e678e0f79f93d1486aa2cb10ca20b54c.webp\",\"name\":\"图像 245.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"35t\"]', 0.00, 13.50, 1.00, 1.00, 20.00, 1.00, NULL, '[\"A6\",\"A7\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'Rubber-tyred Container Gantry Cranes are applicable to remove, load and unload international standard containers.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;Form of drawing trolley is adopted to achieve light structure,advanced performance, high production efficiency, fine maneuverability and small sensibility to unflatness of the ground. The crane is powered by cable drum. At the same time, diesel generating set is equipped for conditions when the power is off or the crane moves to another yard. As a result, maximum economic benefits are brought to the users.&lt;/p&gt;', '&lt;p&gt;Rubber-tyred Container Gantry Cranes are applicable to remove, load and unload international standard containers.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/f5dd4bddec37996e72be70e8da894560.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/b3fceaa5ffbf589279e520fa07a9dcf6.webp\",\"name\":\"\"}]', 10000, 0, 1731552355, 1732437827, NULL);
INSERT INTO `cmf_product` VALUES (27, 9, 'Shipbuilding Gantry Crane', 'Shipbuild Gantry Crane', 'Shipyard Gantry Crane,Gantry Crane for Shipbuilding,Offshore service vessel crane,ship crane,port crane', 'portal/20241124/1f8fab18d94b1b8a253ff18e9d289b3b.webp', '[{\"url\":\"portal\\/20241124\\/191d39401b769d89617b41de45ea14da.webp\",\"name\":\"图像 251.webp\"},{\"url\":\"portal\\/20241124\\/023f51c268c0b51db14a509c0b4ee263.webp\",\"name\":\"图像 252.webp\"},{\"url\":\"portal\\/20241124\\/3bed9f58b32a3b825c236e87a8936259.webp\",\"name\":\"图像 254.webp\"},{\"url\":\"portal\\/20241124\\/f040f4d796c78b2e9f8c003b5037e358.webp\",\"name\":\"图像 255.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"300t\",\"250t\",\"360t\",\"500t\",\"1200t\"]', 0.00, 75.00, 1.00, 50.00, 185.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"active_url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}]', '', 'It is special for fragmented transport, end-to-end jóoint and turning operation of large ship hulls.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;ME shipbuilding gantry crane, a type of gantry crane of heavy lifting load, large span and high lifting altitude. Main technical characteristics: &lt;/p&gt;\n&lt;p&gt;It have multiple functions of single hanging, hoisting, turnover in the air, sliht horizontal turnover in the air and so on; &lt;/p&gt;\n&lt;p&gt;All operating mechanisms employ frequency control; &lt;/p&gt;\n&lt;p&gt;On the top of the girder at the side of rigid leg is equipped a jib crane to accomplish maintenance of upper and lower crabs To prevent storm attack, such safe and reliable anti-wind devices as rail clamp and ground anchor are furnished&lt;/p&gt;\n', '&lt;p&gt;It is special for fragmented transport, end-to-end jóoint and turning operation of large ship hulls.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/2ca2b51eb9b4eae0383be2d1862db55a.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/17eb6301a74a4d0f8e8e98c651116a9d.webp\",\"name\":\"\"}]', 10000, 0, 1731552637, 1732437784, NULL);
INSERT INTO `cmf_product` VALUES (28, 9, 'Double Girder Grab Gantry Crane', 'Grab Gantry Crane', 'Double Girder Overhead Crane with Grab,Grab Bucket Gantry Crane,Grab Double Girder Overhead Crane,Grab Overhead Cranes &amp; Grab Bridge Crane', 'portal/20241124/c22943c03a66a758731f01da28ce2f7d.webp', '[{\"url\":\"portal\\/20241124\\/2c79f1c2dcdf930b21db6c03c360c727.webp\",\"name\":\"图像 255.webp\"},{\"url\":\"portal\\/20241124\\/106843ef8cbeed4a93ae2f0cf05ae593.webp\",\"name\":\"图像 256.webp\"},{\"url\":\"portal\\/20241124\\/6429f3d1543099b19b819ea9dc4e2a84.webp\",\"name\":\"图像 257.webp\"},{\"url\":\"portal\\/20241124\\/92d6f66026ff14581c3c7f027499ae03.webp\",\"name\":\"图像 258.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\"]', 0.00, 10.00, 1.00, 18.00, 35.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'Electric double girder rail travelling gantry crane with bucket is usually used in open-air warehouses or along railways.  such as coal blocks and sand. ', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;Double girder gantry Crane is widely used together with winch or trolley for lifting device. &lt;/p&gt;\n&lt;p&gt;It is a medium and heavy size crane which travels in track.&lt;/p&gt;\n&lt;p&gt;Its proper lifting weight is 5 to 10 tons and proper span is 18 to 35 meters.&lt;/p&gt;\n&lt;p&gt;Its proper working temperature is -20--+40 centigrade and with three working class: A5, A6, A7.&lt;/p&gt;\n&lt;p&gt;Gantry crane is a bridge crane whose bridge is supported on the ground track by outriggers on both sides. It is structurally composed of a gantry, a trolley running mechanism, a lifting trolley and an electrical part. Some gantry cranes have outriggers only on one side, and the other side is supported on a factory building or a trestle for operation, which is called a semi-gantry crane. The gantry crane is composed of the upper bridge (including the main beam and end beam), outriggers, and lower crossbeams. In order to expand the operating range of the crane, the main beam can extend beyond the outriggers to one or both sides to form a cantilever. A lifting trolley with an arm can also be used to expand the operating range of the crane by pitching and rotating the arm.&lt;/p&gt;\n', '\n&lt;p&gt;Electric double girder rail travelling gantry crane with bucket is usually used in open-air warehouses or along railways.  His grab is usually used to grab materials such as coal blocks and sand. Electric double girder rail travelling gantry crane with bucket is usually used in open-air warehouses or along railways.&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/6240a1c2af0a2e07693532d9a87273e2.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/6470bcccc36f76a567a59f73f5c7fbaa.webp\",\"name\":\"\"}]', 10000, 0, 1731552796, 1732437739, NULL);
INSERT INTO `cmf_product` VALUES (29, 9, 'Double Girder Cart Semi Gantry Crane', 'Double Girder Semi Gantry Crane', 'Double Girder Semi Gantry Crane &amp; Portal Crane,DOUBLE GIRDER SEMI GANTRY CRANES,Double Girder Semi-Gantry Crane', 'portal/20241124/9c158f09b1a926040f2dfcded4d5c853.webp', '[{\"url\":\"portal\\/20241124\\/3f366ca8717bb94c99b3653380a6a45d.webp\",\"name\":\"图像 267.webp\"},{\"url\":\"portal\\/20241124\\/bd3a0a74169ab7d7fb26b6a0e3bde9de.webp\",\"name\":\"图像 268.webp\"},{\"url\":\"portal\\/20241124\\/bf335c48c90e0797d936fa5b8a75b0a4.webp\",\"name\":\"图像 269.webp\"},{\"url\":\"portal\\/20241124\\/ec36adf24d26f51dd0145d4b59f69a2f.webp\",\"name\":\"图像 270.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"10t\",\"16t\",\"20t\"]', 0.00, 25.20, 1.00, 1.00, 47.00, 1.00, NULL, '[\"A3\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'BMG Model Electrical Double Semi Girder Gantry crane is a universal crane widely used at open ground and warehouses to load and unload or grab materials.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;MGB double-girder semi-gantry crane with hook &lt;/p&gt;\n&lt;p&gt;The double-girder semi-gantry crane with hook is mainly composed of gantry,crane crab, trolley travelling mechanism and electric control system, &lt;/p&gt;\n&lt;p&gt;The gantry,of a box-shape structure, has a leg at its one side and runs along the ground rails, and has no leg at the other side and runs along the rails on the factory workshop. &lt;/p&gt;\n&lt;p&gt;The closed cab is employed for operation, where there are adjustable seat, insulating mat on the floor.toughened glass for the window, fire extinguisher, electric tan and auxiliary equipment such as air conditioner,acoustic alarm and interphone which can be furnished as required by users. &lt;/p&gt;\n&lt;p&gt;The rest structure and configuration are the same as the MG double-girder gantry crane&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '\n&lt;p&gt;BMG Model Electrical Double Semi Girder Gantry crane is a universal crane widely used at open ground and warehouses to load and unload or grab materials&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/24f53c47ea00bcc323913d0a1be67fa7.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/015f0f501ab9c0bf03ba599d5a748d52.webp\",\"name\":\"\"}]', 10000, 0, 1731552916, 1732437646, NULL);
INSERT INTO `cmf_product` VALUES (30, 9, 'A typed Double Girder Hook Gantry Crane', 'A typed Hook Gantry Crane', 'A type double girder gantry crane with hook,Any Height, Span &amp; Safe Working Load, Double Girder Gantry Crane,Double Beam Hook Gantry Crane,Double Girder Gantry Crane (Box-type)', 'portal/20241124/8638bfdab518a04791104a9405b96af6.webp', '[{\"url\":\"portal\\/20241124\\/16b88c1ab5a75e220f31c86e936f3fbd.webp\",\"name\":\"图像 269.webp\"},{\"url\":\"portal\\/20241124\\/246ef5568cf2418e3e8b297422c139f4.webp\",\"name\":\"图像 270.webp\"},{\"url\":\"portal\\/20241124\\/2604d56af9232b565cd7ae4a481a8940.webp\",\"name\":\"图像 271.webp\"},{\"url\":\"portal\\/20241124\\/6efaf3f859605a3c273d9ac28a312eba.webp\",\"name\":\"图像 272.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\",\"50t\",\"80t\"]', 0.00, 15.00, 1.00, 18.00, 35.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'Double glider gantry cranes with hook are available for general service, such as loading, unloading,lifting and transferring work in outdoor storage oron railways.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;It consists of four main parts, namely, the bridge structure, the travelling mechanism, the trolley and the electric equipment. The bridge is welded structure of box-type; individual drives are adopted for travelling mechanism on each end of the crane. All movements of the crane are controlled form the cabin. Either rigid shapes of steel (angles or tees) or flexible insulated cable shall be selected to be utilized as runway conductors and proposed in the order by the purchaser&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n', '\n&lt;p&gt;Double glider gantry cranes with hook are available for general service, such as loading, unloading,lifting and transferring work in outdoor storage oron railways&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/20278ee3f31ccc478c9de4f1a850f28e.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/766a68639bc5bb6b7097dde6af6b2e65.webp\",\"name\":\"\"}]', 10000, 0, 1731554597, 1732437604, NULL);
INSERT INTO `cmf_product` VALUES (31, 9, 'U typed Double Girder Hook Gantry Crane', 'U typed Hook Gantry Crane', 'U Type Double Girder Gantry Crane with Hook,U Type Double Beam Hook Gantry Crane,U-type Double Girder Gantry Crane,Any Height, Span &amp; Safe Working Load, Double Girder Gantry Crane', 'portal/20241124/d6f1689a2c01e0ec433a4cc3836d2021.webp', '[{\"url\":\"portal\\/20241124\\/ca60c84b4b913543da0047c565125465.webp\",\"name\":\"图像 280.webp\"},{\"url\":\"portal\\/20241124\\/7e8bbad9abb5038a69595356fa25cb90.webp\",\"name\":\"图像 281.webp\"},{\"url\":\"portal\\/20241124\\/e0ae83d29e4e4d2e90ef5ecb7f1f30ac.webp\",\"name\":\"图像 282.webp\"},{\"url\":\"portal\\/20241124\\/88cbe3aa8bece0846983ddc9b6fc3c75.webp\",\"name\":\"图像 283.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"10t\",\"16t\",\"20t\",\"32t\",\"50t\",\"80t\"]', 0.00, 12.00, 1.00, 18.00, 35.00, 1.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'The machine is suitable for railway freight yards, ports, open warehouses, container transfer stations, etc. with large span and frequent loading and unloading operations.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;The machine adopts a U-shaped gantry with a large clearance (nearly 7m) over its legs which is suitable for handling long and bulky goods and containers. The machine has two types of conductive forms: sliding contact wire and cable.The sliding contact wire form is preferred, and the conductive form and position should be clear when ordering&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;\n', '\n&lt;p&gt;The machine is suitable for railway freight yards, ports, open warehouses, container transfer stations, etc. with large span and frequent loading and unloading operations&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/c6bf6ad982f941bea9150fbee2b14844.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/54363077ccdd87d549cf180f2c8be82a.webp\",\"name\":\"\"}]', 10000, 0, 1731554740, 1732437556, NULL);
INSERT INTO `cmf_product` VALUES (32, 9, 'Rail Mounted Container Gantry Crane', 'Rail Container Gantry Crane', 'Container Rail Mounted Gantry Crane,Rail-Mounted Gantry Cranes,Rail mounted gantry cranes,Container Gantry Crane', 'portal/20241124/ffae7aeb341ceec68537162957f154b2.webp', '[{\"url\":\"portal\\/20241124\\/d0106a6ac039f1d7582bb4114e71e1cd.webp\",\"name\":\"图像 288.webp\"},{\"url\":\"portal\\/20241124\\/60890636e3ebc87170ea4d840fb9b4f8.webp\",\"name\":\"图像 289.webp\"},{\"url\":\"portal\\/20241124\\/5c6747d67464764a9716aa7569a23a3a.webp\",\"name\":\"图像 290.webp\"},{\"url\":\"portal\\/20241124\\/86f0a6c35bf540c5bbf167389e0a42ec.webp\",\"name\":\"图像 291.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"20t\",\"25t\",\"30t\",\"35t\",\"40t\",\"45t\",\"50t\",\"70t\"]', 0.00, 45.00, 1.00, 7.50, 47.00, 1.00, NULL, '[\"A3\",\"A5\",\"A8\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"}]', '', 'A Rail Mounted Gantry (RMG) is a specialized material handling equipment used in ports , container terminals, and intermodal yards for efficient cargo movement .', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;Rail-mounted container gantry cranes (RMG) is a specialized yard container handling machine. It can travel on rail by means of the yard power, and lift an stack containers in the yard area with the equipment of the 20\' or 40\' telescopic spreader (or twin-lift spreader if needed). The RMG has the advantage of being driven by electrical power, clean, bigger lifting capacity, an high gantry traveling speed with cargo. The RMG consists of lifting mechanism, trolley traversing mechanism, gantry mechanism and sway-dampening mechanism.&lt;/p&gt;', '\n&lt;p&gt;A Rail Mounted Gantry (RMG) is a specialized material handling equipment used in ports , container terminals, and intermodal yards for efficient cargo movement . RMGs are designed specifically for handling containers and heavy loads, such as pallets and bulk materials. They are powered by electricity or diesel.&lt;/p&gt;\n&lt;p&gt;RMGs are commonly used for container loading and unloading , cargo transportation within a port or terminal, and container stacking in depots or yards. They are equipped with spreader or grab attachments for secure lifting and movement of containers or other types of freight.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/88eda87cbf881a39642dcd205fbf4767.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/5242e5ae110329cc09f071bb55232c8e.webp\",\"name\":\"\"}]', 10000, 0, 1731555254, 1732438025, NULL);
INSERT INTO `cmf_product` VALUES (33, 8, 'Mini Gantry Crane', 'Portable/Mini gantry crane', 'Steel/Aluminum Portable Gantry Crane,Portable Adjustable Gantry Cranes,Adjustable Height Aluminum,Lifting Porta-Gantry Rapide,Portable Lift Hoist with Height,Telescoping Gantry Crane,Lifting PORTA-GANTRY,Foldable Mobile Gantry,Mobile Gantry Crane,Small Gantry Crane,PORTA GANTRY', 'portal/20241124/88c58078daa6e9c74d8bf13c69d837f9.webp', '[{\"url\":\"portal\\/20241124\\/973370c459b8f2c1b2abc89026090989.webp\",\"name\":\"图像 293.webp\"},{\"url\":\"portal\\/20241124\\/6b4f82aa96bfeea71085685ea85e9847.webp\",\"name\":\"图像 294.webp\"},{\"url\":\"portal\\/20241124\\/ef451519458e60085b87e517770aeb99.webp\",\"name\":\"图像 295.webp\"},{\"url\":\"portal\\/20241124\\/fab6231431347e9410fbe9074d35d00c.webp\",\"name\":\"图像 296.webp\"},{\"url\":\"portal\\/20241124\\/55fdb4db8c5bd5f52156bf8c2b507403.webp\",\"name\":\"图像 297.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"0.2t\",\"0.5t\",\"1t\",\"2t\",\"3t\",\"5t\",\"7t\",\"10t\"]', 0.00, 10.00, 1.00, 1.00, 12.00, 1.00, NULL, '[\"A3\",\"A4\",\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"},{\"url\":\"admin\\/20241113\\/824a82b72ea134766c71f846ea44c2ae.png\",\"active_url\":\"admin\\/20241113\\/6ff397a380eb350f33cc45efd876b272.png\",\"name\":\"Magnetic chuck\"},{\"url\":\"admin\\/20241113\\/b3ff42aa447759303923d0e656a0fa2f.png\",\"active_url\":\"admin\\/20241113\\/4505daf8bdd52128d663e61e5c8bc2eb.png\",\"name\":\"Hanging beam\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"active_url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}]', '', 'Workshop/Warehouse/Factory/Small equipment installation/goods and work piece handing. This crane is designed for transporting and positioning materials.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;Advantage is can move easily, disassemble and install quickly, cover little area. The structure design reasonably, can withstand 100 ~ 10000 kg weight, span up to 10 meters.Especially apply to workshop equipment installation, transportation&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;\n', '&lt;p&gt;Workshop/Warehouse/Factory/Small equipment installation/goods and work piece handing. This crane is designed for transporting and positioning materials.Mini Movable Gantry Crane which is manufactured according to the medium and small factory (company) daily production need. It applies to model manufacture and installing situation, automobile factories, producing department and other lifting occasions.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/dbc88ce8ce10068abecac3e59359224f.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/aa4c8f8eb17550fb1974382df3e6ee64.webp\",\"name\":\"\"}]', 10000, 0, 1731555424, 1732437170, NULL);
INSERT INTO `cmf_product` VALUES (34, 11, 'Single Girder Cast Crane', 'Cast/Ladle/Foundry Crane', 'Casting Ladle Crane,Foundry Crane for Sale, Customized Foundry Overhead Crane,Ladle Handling Overhead Crane,Steel Mill Casting Crane for Hot Ladle Hoisting,Material Foundry Ladle Crane Iron Metal Casting Overhead Crane Molten Liquid Steel Ladle,Foundry Overhead Crane', 'portal/20241124/97d5021f63241ddf6fd345798b1d6fe0.webp', '[{\"url\":\"portal\\/20241124\\/d61a80ee3c1cab328c843321504d7ccd.webp\",\"name\":\"图像 295.webp\"},{\"url\":\"portal\\/20241124\\/fae967f78c355b41c363bfe63797ba1b.webp\",\"name\":\"图像 296.webp\"},{\"url\":\"portal\\/20241124\\/59c714620be20d05f11c54af9a73e6a2.webp\",\"name\":\"图像 297.webp\"},{\"url\":\"portal\\/20241124\\/fde53e59beabb3b0050fd055b775d7c5.webp\",\"name\":\"图像 298.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"2t\",\"3t\",\"5t\",\"10t\"]', 0.00, 20.00, 1.00, 7.50, 28.50, 1.00, NULL, '[\"A5\",\"A6\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/55fad8d3745df67932b85244220071ff.png\",\"active_url\":\"admin\\/20241113\\/4a950a891fd83fdcea7f15b288a2efec.png\",\"name\":\"Grab bucket\"},{\"url\":\"admin\\/20241113\\/824a82b72ea134766c71f846ea44c2ae.png\",\"active_url\":\"admin\\/20241113\\/6ff397a380eb350f33cc45efd876b272.png\",\"name\":\"Magnetic chuck\"},{\"url\":\"admin\\/20241113\\/b3ff42aa447759303923d0e656a0fa2f.png\",\"active_url\":\"admin\\/20241113\\/4505daf8bdd52128d663e61e5c8bc2eb.png\",\"name\":\"Hanging beam\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"active_url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}]', '-20℃~60℃', 'This product is widely used in plants warehouse, material stocks to lift goods.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;It uses CD/MD model electric hoist as the lifting mechanism which is running at the I-steel under the main girder.&lt;/p&gt;', '&lt;p&gt;LDY Single girder overhead metallurgy crane for lifting molten metal and foundary location is ameliorated and designed on the basis of LD type single girder overhead crane. This product is widely used in plants warehouse, material stocks to lift goods.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/b4195b4458308d22521ac14e79380642.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/d61a80ee3c1cab328c843321504d7ccd.webp\",\"name\":\"\"}]', 10000, 0, 1731571619, 1732437996, NULL);
INSERT INTO `cmf_product` VALUES (35, 11, 'Four Girder Ladle Crane', 'Four Girder Cast/ladle/foundry Crane', 'Four-girder charging cranes,Four Girders Ladle Handling Casting Cranes,Four Girder Casting Crane | Hot Metal Ladle Crane,hot metal ladle cranes', 'portal/20241124/43f6348a3473c499ee3cc628be642fec.webp', '[{\"url\":\"portal\\/20241124\\/c6fa97e0e75c544fd5dc1673bcecd328.webp\",\"name\":\"图像 304.webp\"},{\"url\":\"portal\\/20241124\\/2132ac8cd283e480f34d88a1a9f39758.webp\",\"name\":\"图像 305.webp\"},{\"url\":\"portal\\/20241124\\/f7b5c6c3e04e42980bef205ecc412918.webp\",\"name\":\"图像 306.webp\"},{\"url\":\"portal\\/20241124\\/489e22300b03694e1fe7119eb5bd1519.webp\",\"name\":\"图像 307.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"125\",\"140\",\"160\",\"180\",\"200\",\"225\",\"240\",\"280\",\"320\"]', 0.00, 34.00, 1.00, 19.00, 28.50, 1.00, NULL, '[\"A7\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"active_url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}]', '', 'Casting bridge cranes are the main handling equipment for smelting workshop of steel works. They are used for conveying, pouring and hot metal charging of liquid metal in smelting process.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;YZS casting bridge crane, adopting main crab and auxiliary crab, and four-girder and four-rail structure, is composed of bridge, main crab, auxiliary crab, connecting traverse, trolley traveling mechanism and electric part. The main crab runs at the rails outside the bridge, and the auxiliary crab runs at the rails inside the bridge.The main crab employs the connecting transverse as the load handling device to hoist steel ladle, and the auxiliary crab, employing the hook as the load handling device, runs across under the main crab to accomplish pouring of molten steel and steel slag,and other auxiliary hoisting in coordination with the main hook.&lt;/p&gt;\n&lt;p&gt;The trolley travelling mechanism and main electric equipment are installed in the girder. The girder\' s electric panel room employs rock wool for heat insulation, and has an air cooler inside. To reduce heat radiation of molten steel to metal structural members, a thermal baffle is set along the span direction at the bottom of the girder.&lt;/p&gt;\n&lt;p&gt;The trolley travelling mechanism adopts four-corner drive. &lt;/p&gt;\n&lt;p&gt;The crane is equipped with a special electronic scale, and there are display devices in the cab and on the bridge. The main hoisting mechanism is furnished with an overspeed switch.&lt;/p&gt;\n', '&lt;p style=&quot;text-align: left;&quot;&gt;Casting bridge cranes are the main handling equipment for smelting workshop of steel works. They are used for conveying, pouring and hot metal charging of liquid metal in smelting process.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/cdcb47d58846c3a08fb6dd56556f73ce.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/6d9450875221e3721f4d656e598d1be3.webp\",\"name\":\"\"}]', 10000, 0, 1731572122, 1732438180, NULL);
INSERT INTO `cmf_product` VALUES (36, 11, 'Double Girder Heavy Duty Ladle Crane', 'Double Girder Heavy Ladle Crane', 'Double Girder Ladle Overhead Crane for Steel Mill,YZ Ladle Handling Cranes for Foundry: Safe Solutions for Lifting Molten Metal,Ladle Crane,Foundry Overhead Crane,YZ Double Girder Casting Bridge Crane,Steel Mill Casting Crane for Hot Ladle Hoisting,Hook Casting Ladle Double Beam Bridge Crane', 'portal/20241124/1e55c3932ed85242c457be2cfd4277c8.webp', '[{\"url\":\"portal\\/20241124\\/f0607e66586849848fa4d91d694c4540.webp\",\"name\":\"图像 316.webp\"},{\"url\":\"portal\\/20241124\\/b01c5dc2d83e18f708a6562dfc0743cd.webp\",\"name\":\"图像 318.webp\"},{\"url\":\"portal\\/20241124\\/de420bc22827bded5cfe91bfce198271.webp\",\"name\":\"图像 319.webp\"},{\"url\":\"portal\\/20241124\\/cdcb47d58846c3a08fb6dd56556f73ce.webp\",\"name\":\"图像 320.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"100t\",\"125t\",\"140t\",\"160t\",\"200t\"]', 0.00, 26.00, 1.00, 19.00, 25.00, 1.00, NULL, '[\"A7\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"active_url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}]', '', 'The main hook employs the constant-spacing connecting traverse as the load handling device to hoist steel ladle and the auxiliary hook acts in concert with the main hook to accomplish pouring of molten steel and steel slag, and other auxiliary hoisting.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;YZ casting bridge crane, of a double-girder single-crab structure, is mainly composed of bridge, crab, connecting traverse, trolley travelling mechanism and electric part. The trolley travelling mechanism and maín electric equipment are installed in the girder. The girder\' s electric panel room employs rock wool for heat insulation, and has an air cooler inside,To reduce heat radiation of molten steel to metal structural members, a thermal baffle is set along the span direction at the bottom of the girder &lt;/p&gt;\n&lt;p&gt;The trolley travelling mechanism adopts four-corner drive. &lt;/p&gt;\n&lt;p&gt;The crane is eguipped with a special electronic scale, and there are display devices in the cab and on the bridge. The main hoistina mechanism is furnished with an overspeed switch.&lt;/p&gt;\n', '&lt;p&gt;The main hook employs the constant-spacing connecting traverse as the load handling device to hoist steel ladle and the auxiliary hook acts in concert with the main hook to accomplish pouring of molten steel and steel slag, and other auxiliary hoisting.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/5fd7c44051e87353b1635df739db471b.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/7026c3b4b2be7a06a52acff49396c1b4.webp\",\"name\":\"\"}]', 10000, 0, 1731572315, 1732437919, NULL);
INSERT INTO `cmf_product` VALUES (37, 12, 'Low headroom hoist', 'Low headroom hoist', 'Low Headroom Chain Hoist Trolley Push,Ultra Low Headroom Trolley Hoist,Low Headroom Trolley Hoist,Low Headroom Hoists,Ultra Low Headroom Hoist,Ultra-Low Headroom – Wire Rope Hoists,Ultra Low Headroom Wire Rope Hoist,Hand Chain Hoist with Low Headroom Trolley', 'portal/20241124/fa8f0dd1ce870f00e4eb77e16726d07b.webp', '[{\"url\":\"portal\\/20241124\\/832db4f5303b128b3b7e8b66fc6cafd1.webp\",\"name\":\"图像 335.webp\"},{\"url\":\"portal\\/20241124\\/fa55b19f7393be23c8682f9b2938ad76.webp\",\"name\":\"图像 336.webp\"},{\"url\":\"portal\\/20241124\\/70366a771fd07f1184d5ae071acc9fcb.webp\",\"name\":\"图像 337.webp\"},{\"url\":\"portal\\/20241124\\/05e6d78d54adb11798309ea4ca4912d6.webp\",\"name\":\"图像 338.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"3t\",\"5t\",\"7.5t\",\"10t\"]', 0.00, 30.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"M3\",\"M4\",\"M5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', ' Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Food &amp; Beverage Factory, Construction works.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;The low headroom wire rope electric hoist is an electric hoist specially designed and developed for low workshops and places with restricted height. The biggest advantage of low headroom electric hoist is the use of headroom height. Compared with ordinary wire rope electric hoist, the lifting height can be increased by 200~500mm, which ingeniously solves the trouble of limited low space.&lt;/p&gt;\n&lt;p&gt;The low headroom wire rope electric hoist product has the characteristics of compact structure, single lifting speed, doublespeed, high effective lifting stroke, stable operation, etc.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;It has a wide range of applications. Especially in newly-built factories, it can effectively raise the height of the stroke, reduce the height of the building, and reduce the building cost. Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Food &amp;amp; Beverage Factory, Construction works.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/5799bd709972b55c5c6dff85cbcaf31c.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/164131794ed4b5ccb109973477726bb9.webp\",\"name\":\"\"}]', 10000, 1, 1731572321, 1732437688, NULL);
INSERT INTO `cmf_product` VALUES (38, 12, 'New Types hoist', 'New Types/European hoist', 'New type European Double Speed Wire Rope Electric hoist,European wire rope single girder hoist &amp; Underslung hoist,European Type Wire Rope Electric Hoist - Double Girder,European Electric Hoist- Chain &amp; Rope Fem Hoists,European Type Wire Rope Electric Hoist - Single Girder,Heavy Duty Electric Chain Hoist With Power Trolley,Heavy Duty Electric Chain Hoist Fixed', 'portal/20241124/6daa49151e8de46b0d65732fbab827e3.webp', '[{\"url\":\"portal\\/20241124\\/85edde5c75609fbc98045e31ec38ede6.webp\",\"name\":\"图像 339.webp\"},{\"url\":\"portal\\/20241124\\/e209933b30ef29fd699eb218a15fd93b.webp\",\"name\":\"图像 340.webp\"},{\"url\":\"portal\\/20241124\\/e0fdd8229599c0cecbd9c6fd46bef06e.webp\",\"name\":\"图像 341.webp\"},{\"url\":\"portal\\/20241124\\/3c9db61bccd85fe091883cd4379bae21.webp\",\"name\":\"图像 342.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"1t\",\"2t\",\"2.5t\",\"5t\",\"10t\",\"15t\",\"20t\",\"25t\",\"32t\",\"40t\",\"50t\",\"63t\",\"80t\"]', 0.00, 18.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"M3\",\"M4\",\"M5\",\"M6\",\"M7\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Food &amp; Beverage Factory, Home Use, Food Shop, Printing Shops, Construction works , Energy &amp; Mining, Food &amp; Beverage Shops', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;The Euro hoist is a little lighter in weight and has a two-speed lift speed.&lt;/p&gt;\n&lt;p&gt;With ABM imported motor, service life, work up the stability, compared to the CD wire rope hoist is much better.&lt;/p&gt;\n&lt;p&gt;The Euro Hoist is a newly developed, popular product, recognised as an advantage by foreign customers.&lt;/p&gt;\n&lt;p&gt;Design structure in line with FEM standards, SEMA standards.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Food &amp;amp; Beverage Factory, Home Use, Food Shop, Printing Shops, Construction works , Energy &amp;amp; Mining, Food &amp;amp; Beverage Shops&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/63e5efad29a433283829f3d44d844f4a.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/f43e3857111ea87bab478e23b8f31347.webp\",\"name\":\"\"}]', 10000, 1, 1731572490, 1732437644, NULL);
INSERT INTO `cmf_product` VALUES (39, 12, 'Electric Chain Hoist', 'Electric Chain Hoist', 'Electrical Chain Hoist with Radio remote control,Compact Electric Chain Hoist with Trolley,NL model electric operation chain hoist,3-Phase Dual Speed Electric Chain Hoist,Compact Electric Chain Hoist Fixed,High Speed Electric Chain Hoists,Variable Speed Electric Chain Hoists,Motorized Hoist,Electrical Hoists', 'portal/20241124/c50f601677dd2f2d247a8ceddf578d4c.webp', '[{\"url\":\"portal\\/20241124\\/96425a4a4ebb2ddc688669f58c07cef6.webp\",\"name\":\"图像 345.webp\"},{\"url\":\"portal\\/20241124\\/627a37f35a277bcbdef467cccebf3c63.webp\",\"name\":\"图像 346.webp\"},{\"url\":\"portal\\/20241124\\/255e3b7a470cbb682ea5215230818ba4.webp\",\"name\":\"图像 347.webp\"},{\"url\":\"portal\\/20241124\\/f14b1a4ded5e2039ec84ae13843d7052.webp\",\"name\":\"图像 348.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"1t\",\"2t\",\"2.5t\",\"3t\",\"5t\",\"10t\"]', 0.00, 30.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"M3\",\"M4\",\"M5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Food &amp; Beverage Factory, Home Use, Food Shop, Printing Shops, Construction works , Energy &amp; Mining, Food &amp; Beverage Shops', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;Chain hoists are chain type, smaller and lighter. New type of electric hoist employs motor of hoisting mechanism and reducer imported from Germany. The integrated and compact design of hoisting motor, reducer, reel and limit switch saves space for the user. Modular design increases the reliability of mechanism meanwhile reduces the time and cost for maintaining.&lt;/p&gt;\n&lt;p&gt;It has more and faster hoist speed and various pulley ratio which can be selected. The standard traveling mechanism of trolley is controlled by converter, with speed of 20m/min, which makes a little swing and accurate position if hoisting items while trolley traveling as well as lifts precision and valuable items reliably.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Food &amp;amp; Beverage Factory, Home Use, Food Shop, Printing Shops, Construction works , Energy &amp;amp; Mining, Food &amp;amp; Beverage Shops&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/1a49d3f6479f5f4c47f0bb110999dc85.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/38d7b73486fbeb8ac4c5e1e6fdd79700.webp\",\"name\":\"\"}]', 10000, 1, 1731572629, 1732437584, NULL);
INSERT INTO `cmf_product` VALUES (40, 11, 'Double Girder Ladle Crane', 'Cast/ladle/foundry Crane', 'Ladle Crane,Steel Mill Ladle Crane, Casting Ladle Crane,Double Girder Ladle Foundry And Casting Steel Mill Overhead Crane,Ladle Foundry Double Girder Overhead Crane , Casting Steel Mill Bridge Crane,Foundry Overhead Crane', 'portal/20241124/7791fc9c1ead95f5745038a0f2982406.webp', '[{\"url\":\"portal\\/20241124\\/f7b5c6c3e04e42980bef205ecc412918.webp\",\"name\":\"图像 326.webp\"},{\"url\":\"portal\\/20241124\\/acfb104ac16a0e9efd35f38da90d0ae8.webp\",\"name\":\"图像 327.webp\"},{\"url\":\"portal\\/20241124\\/44929b6386877e5cfc8ae1d80fb12618.webp\",\"name\":\"图像 328.webp\"},{\"url\":\"portal\\/20241124\\/b01c5dc2d83e18f708a6562dfc0743cd.webp\",\"name\":\"图像 329.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"5t\",\"10t\",\"16t\",\"20t\",\"32t\",\"50t\",\"74t\"]', 0.00, 24.00, 1.00, 10.50, 31.50, 1.00, NULL, '[\"A6\",\"A7\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"},{\"url\":\"admin\\/20241113\\/694993e1d78dece1129eff25e5c9d6ba.png\",\"active_url\":\"admin\\/20241113\\/9e916689088a14c0e01d72daba6d8827.png\",\"name\":\"Container spreader\"}]', '-10℃~60℃', 'Factory,workshop,warehouse,power station,logstic,etc. ', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;With the development of steel industry, the foundry crane need to work more frequently. So the foundry crane must be safety and reliable, and even when some parts damaged, Our crane can keep the ladle not falling or rollover. The framework of our crane is simple, and can be maintained very quickly in order to ensure the steel making production continuously.&lt;/p&gt;', '&lt;p&gt;Double beam ladle crane is the main equipment during the steel making process. The crane is applicable in steel making workshop to transfer liquid steel or metal under the high temperature, dusty working environment.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/462fa0034bd09b04df1cee152b492a60.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/4f1a237d5443102c941718675901dc03.webp\",\"name\":\"\"}]', 10000, 0, 1731572807, 1732437847, NULL);
INSERT INTO `cmf_product` VALUES (41, 12, 'Metallurgical Electric Hoist', 'Metallurgical/Ladle/Foundry Electric Hoist', 'YH Type Metallurgical Electric Hoist of DJCRANES,Metallurgical Electric Wire Rope Hoist for Steel Mill,Hot metal hoist: wire rope hoist for hot metal handling foundry use,Hot Metal Wire Rope Hoist,Metallurgy Electric Hoist YHII', 'portal/20241124/b9621f60596784a3faebea5b40436c74.webp', '[{\"url\":\"portal\\/20241124\\/0af21bd7e6a91758b47316196ca8115b.webp\",\"name\":\"图像 347.webp\"},{\"url\":\"portal\\/20241124\\/164131794ed4b5ccb109973477726bb9.webp\",\"name\":\"图像 348.webp\"},{\"url\":\"portal\\/20241124\\/d8f130ab94b54e6d1267849ff53b7984.webp\",\"name\":\"图像 349.webp\"},{\"url\":\"portal\\/20241124\\/709feb262f28c09a203fbffac2c0dbeb.webp\",\"name\":\"图像 350.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"2t\",\"3t\",\"5t\",\"10t\"]', 0.00, 20.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"M3\",\"M4\",\"M5\",\"M6\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '-20℃~60℃', 'Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Farms, Construction works , Energy &amp; Mining, Food &amp; Beverage Shops', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;HY electric Metallurgy wire rope hoist provides two speeds: normal speed and low speed. At a low speed, it can do precise loading and unloading, mounding of sand box, maintenance of machine tools, etc. LDY metallurgical single beam overhead crane is mainly used for metallurgical and foundry places where molten metal is lifted. Itslifting mechanism is YHⅡ metallurgical electric hoist, &lt;/p&gt;\n&lt;p&gt;The bottom of the main beam of the crane adopts special heat insulation treatment; the relative humidity does not exceed 50% at a temperature of 40℃.Other places where molten non-metallic materials and hot solid metals are lifted can alsobe used as reference.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '&lt;p&gt;Building Material Shops, Machinery Repair Shops, Manufacturing Plant, Farms, Construction works , Energy &amp;amp; Mining, Food &amp;amp; Beverage Shops, Other. It is widely used in steel mill workshop, essential in raising working efficiency and improving working conditions.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/585f843ab890188f616e1e230cab51c2.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/069616b65008321de75fd04272bb3e0c.webp\",\"name\":\"\"}]', 10000, 1, 1731572829, 1732437548, NULL);
INSERT INTO `cmf_product` VALUES (42, 12, 'Explosion Proof Electric Hoist', 'Explosion Proof Electric Hoist', 'Explosion-proof Electric Wire Rope Hoist,BCD Explosion-proof Electric Hoist,HB Type Explosion Proof Crane Explosion Proof Wire Rope Electric Hoist,Non-Corrosive/Explosion Proof/Atex Rated Hoists,Elephant Corrosion Resistant Lever Chain Hoist,SUPER 100 CORROSION RESISTANT 100% NICKEL PLATED WITH SS HAND CHAIN,Elephant EX H100 SPARK RESISTANT WITH OVERLOAD PROTECTION,', 'portal/20241124/d4f6e8bbce8b1a140ab9b2da18e1a5ec.webp', '[{\"url\":\"portal\\/20241124\\/0af21bd7e6a91758b47316196ca8115b.webp\",\"name\":\"图像 348.webp\"},{\"url\":\"portal\\/20241124\\/858b61c53dd53cc723b74d48f625443d.webp\",\"name\":\"图像 349.webp\"},{\"url\":\"portal\\/20241124\\/785e2443d12a7fd75d64c4b61abdc825.webp\",\"name\":\"图像 350.webp\"},{\"url\":\"portal\\/20241124\\/1f095953cdd9b9124821be02ad38f820.webp\",\"name\":\"图像 351.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"0.5t\",\"1t\",\"2t\",\"3t\",\"5t\",\"10t\",\"16t\",\"20t\",\"32t\"]', 0.00, 30.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"A3\",\"A4\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '-20℃~40℃', 'HB type flame proof hoist is used in areas with combustive and other explosive dust.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;This type of crane has features of small weight and bigger lift capacity and better structure.&lt;/p&gt;', '\n&lt;p&gt;HB type flame proof hoist is used in areas with combustive and other explosive dust. &lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/53e630414746500a580a84d50fc65f08.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/a6ced4d47a1377f26bb32a65f875c4a5.webp\",\"name\":\"\"}]', 10000, 1, 1731572984, 1732437725, NULL);
INSERT INTO `cmf_product` VALUES (43, 12, 'Electric Hoist', 'Wire Rope Hoist', 'Wire Rope Hoist CD and MD,Electric Wire Rope Hoists,Electric Hoist CD MD,CD&amp;MD model electric wire rope hoist,', 'portal/20241124/8b216dfff48c6f64b28036c693384a4b.webp', '[{\"url\":\"portal\\/20241124\\/7322762bdc83bf3ce93ee2442e56f10a.webp\",\"name\":\"图像 351.webp\"},{\"url\":\"portal\\/20241124\\/12e2caca4c91fd091f530027c1a789b6.webp\",\"name\":\"图像 352.webp\"},{\"url\":\"portal\\/20241124\\/c3dfd44616078132a56abeaa24f2e675.webp\",\"name\":\"图像 353.webp\"},{\"url\":\"portal\\/20241124\\/1ca0609eecca75a21ed379d0edfacbf3.webp\",\"name\":\"图像 354.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"0.5t\",\"1t\",\"2t\",\"3t\",\"5t\",\"10t\",\"16t\"]', 0.00, 30.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"M3\",\"M4\",\"M5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', ' It is used for such places as industrial and mining establishments , warehouses, wharfs, cargo storage areas and shops. ', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '\n&lt;p&gt;Model CD1, MD,Wirerope Electric Hoist is a small-sized lifting equipment, essential in raising working efficiency and improving working conditions. &lt;/p&gt;\n&lt;p&gt;Model CD1Electric Hoist has only one normal speed, which can satisfy normal application. Model MD, Electric Hoist provides two speeds: normal speed and low speed. At a low speed, it can do precise loading and unloading,mounding of sand box, maintenance of machine tools, etc.Thus,model MDI Electric Hoist is more widely than Model CD1. &lt;/p&gt;\n&lt;p&gt;To meet the needs of lifting heavier cargo,our factory also manufactures HC20t electric hoist.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '\n&lt;p&gt;Electric hoist is small lifting equipment, featuring small volume, light dead weight, easy operation and convenient use. It is &lt;/p&gt;\n&lt;p&gt;used for such places as industrial and mining establishments , warehouses, wharfs, cargo storage areas and shops. It can be mounted on singlebeam,bridge, gantry and arm cranes. With slight modification, it can also be used as a winch.&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '[{\"url\":\"portal\\/20241124\\/a96256ed391b4234f57a03237ccddbe5.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/7faaab9c9a4919b99beb7f2b2129f923.webp\",\"name\":\"\"}]', 10000, 1, 1731573167, 1732437469, NULL);
INSERT INTO `cmf_product` VALUES (45, 14, 'Jib Crane', 'Jib Crane', 'Hydraulic Floor Crane,Industrial jib cranes,BZ type pillar jib crane,Free Standing Pillar Jib Crane,BX Type Wall Mounted Jib Crane of DJCRANES,Floor Mounted Jib Cranes,Tavol Brand BZ Model Column Mounted Jib Cranes,BZ Model Column Mounted Jib Crane(Pillar Crane)', 'portal/20241124/d9f257066020ca89452f18c96b31b7d4.webp', '[{\"url\":\"portal\\/20241124\\/b1ed4ce60654db1bd5f4e8c8abdb585b.webp\",\"name\":\"图像 361.webp\"},{\"url\":\"portal\\/20241124\\/01f2fddb5163b7900758951eb4271389.webp\",\"name\":\"图像 362.webp\"},{\"url\":\"portal\\/20241124\\/fa5cfc1a3267b75ca2ccc3748b2358aa.webp\",\"name\":\"图像 363.webp\"},{\"url\":\"portal\\/20241124\\/ee66131c41df0a8751998911aa31f95b.webp\",\"name\":\"图像 364.webp\"}]', '[{\"url\":\"admin\\/20241113\\/3a4086b94eb04049e74879d75750a6ca.png\",\"name\":\"ccc\"},{\"url\":\"admin\\/20241113\\/6d096b3792f135b10efcdad5010e0870.png\",\"name\":\"ce\"}]', '[\"0.25t\",\"0.5t\",\"1t\",\"2t\",\"3t\",\"5t\",\"10t\",\"16t\"]', 0.00, 30.00, 1.00, 0.00, 0.00, 0.00, NULL, '[\"A5\"]', '[{\"url\":\"admin\\/20241113\\/eedb7999f4f1484061627c2cb66c7fe4.png\",\"active_url\":\"admin\\/20241113\\/7c80d9f1b9f39805ea553c386d22d931.png\",\"name\":\"Lifting hook\"}]', '', 'It can be operated under three-dimen-sional environment, It is superior in the cases of short distance, concentrated lifting. It is widely used at various sites for various trades.', '{\"url\":\"admin/20241124/ebca36a6ffbcb9d26c9bf92a71404e7f.pdf\",\"name\":\"HENAN CRANE.pdf\"}', '&lt;p&gt;Swing level crane is a small and medium-speed lifting equipment devel-oped recentiy. It has characteristics of unique structure,safe and reliable operation, high efficiency, energy-SaVing, time-saving, effort-saving and flexibility.&lt;/p&gt;', '&lt;p&gt;It can be operated under three-dimen-sional environment, It is superior in the cases of short distance, concentrated lifting. It is widely used at various sites for various trades.&lt;/p&gt;', NULL, '[{\"url\":\"portal\\/20241124\\/d1ba97cc7e607a6a0c62be149aa7603a.webp\",\"name\":\"\"},{\"url\":\"portal\\/20241124\\/c087f13b36ff60b103036a6c80c14379.webp\",\"name\":\"\"}]', 10000, 1, 1731573326, 1732437247, NULL);

-- ----------------------------
-- Table structure for cmf_product_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_product_category`;
CREATE TABLE `cmf_product_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类别名（用于url美化）',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父级分类id',
  `list_order` int(11) NOT NULL DEFAULT 10000 COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `delete_time`(`delete_time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_product_category
-- ----------------------------
INSERT INTO `cmf_product_category` VALUES (7, 'New Types Of Cranes', 'New Types/European Cranes', 0, 3, 1731467852, NULL);
INSERT INTO `cmf_product_category` VALUES (6, 'Double Girder Overhead Crane', 'Double Girder Bridge Crane ', 0, 2, 1731467607, NULL);
INSERT INTO `cmf_product_category` VALUES (5, 'Single Girder Overhead Crane', 'Single Girder Overhead Crane', 0, 1, 1731463762, NULL);
INSERT INTO `cmf_product_category` VALUES (8, 'Single Girder Gantry Crane', 'Single Girder Gantry Crane', 0, 4, 1731479078, NULL);
INSERT INTO `cmf_product_category` VALUES (9, 'Double Girder Gantry Crane', 'Double Girder Gantry Crane', 0, 5, 1731551206, NULL);
INSERT INTO `cmf_product_category` VALUES (11, 'Ladle Crane', 'Ladle/Foundry Crane', 0, 7, 1731551274, NULL);
INSERT INTO `cmf_product_category` VALUES (12, 'Electric Hoist', 'Electric Hoist/Lift', 0, 8, 1731551287, NULL);
INSERT INTO `cmf_product_category` VALUES (14, 'Jib Crane', 'Pillar/Wall-Mounted Jib Crane', 0, 9, 1731551303, NULL);

-- ----------------------------
-- Table structure for cmf_product_profession
-- ----------------------------
DROP TABLE IF EXISTS `cmf_product_profession`;
CREATE TABLE `cmf_product_profession`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT 0 COMMENT '产品id',
  `tag_id` int(11) NOT NULL COMMENT '行业标签id',
  `create_time` int(11) NULL DEFAULT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 254 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品行业标签中间表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cmf_product_profession
-- ----------------------------
INSERT INTO `cmf_product_profession` VALUES (1, 45, 1, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (3, 45, 2, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (4, 45, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (5, 39, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (184, 29, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (183, 29, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (182, 28, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (181, 28, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (180, 28, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (179, 28, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (12, 25, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (13, 25, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (14, 25, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (15, 25, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (16, 25, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (17, 25, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (178, 28, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (177, 27, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (176, 27, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (175, 27, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (22, 24, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (23, 24, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (24, 24, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (25, 24, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (26, 24, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (27, 24, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (28, 24, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (29, 25, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (30, 23, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (31, 23, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (32, 23, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (33, 23, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (34, 23, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (35, 23, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (36, 23, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (37, 17, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (38, 17, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (39, 17, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (40, 17, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (41, 17, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (42, 17, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (43, 17, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (44, 17, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (45, 17, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (46, 17, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (47, 16, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (48, 16, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (49, 16, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (50, 16, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (51, 16, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (52, 16, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (53, 16, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (54, 16, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (55, 16, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (56, 16, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (174, 26, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (173, 26, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (172, 32, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (171, 32, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (170, 32, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (169, 18, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (168, 18, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (167, 19, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (65, 15, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (66, 15, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (67, 15, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (68, 15, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (166, 19, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (165, 33, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (164, 33, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (163, 33, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (162, 20, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (74, 14, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (75, 14, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (76, 14, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (77, 14, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (78, 13, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (79, 13, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (80, 13, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (81, 13, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (82, 13, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (83, 13, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (84, 13, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (85, 13, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (86, 12, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (87, 12, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (88, 12, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (89, 12, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (90, 12, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (91, 12, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (92, 12, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (93, 12, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (94, 11, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (95, 11, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (96, 11, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (97, 11, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (98, 11, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (99, 10, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (100, 10, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (101, 10, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (102, 10, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (103, 10, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (104, 10, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (105, 9, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (106, 9, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (107, 9, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (108, 9, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (109, 9, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (110, 8, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (111, 8, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (112, 8, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (113, 8, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (161, 20, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (160, 20, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (159, 20, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (158, 21, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (157, 21, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (119, 22, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (120, 22, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (121, 22, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (122, 22, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (156, 21, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (155, 2, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (154, 2, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (153, 2, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (152, 3, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (151, 3, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (129, 7, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (130, 7, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (131, 7, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (132, 7, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (133, 7, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (134, 7, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (135, 7, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (136, 6, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (137, 6, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (138, 6, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (139, 5, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (140, 5, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (141, 5, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (142, 5, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (143, 5, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (144, 5, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (145, 5, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (150, 3, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (147, 4, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (148, 4, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (149, 4, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (185, 29, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (186, 30, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (187, 30, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (188, 30, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (189, 30, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (190, 30, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (191, 30, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (192, 31, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (193, 31, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (194, 31, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (195, 31, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (196, 31, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (197, 31, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (198, 31, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (199, 31, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (200, 34, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (201, 34, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (202, 34, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (203, 36, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (204, 36, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (205, 36, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (206, 40, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (207, 40, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (208, 40, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (209, 43, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (210, 43, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (211, 43, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (212, 43, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (213, 43, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (214, 43, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (215, 43, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (216, 43, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (217, 39, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (218, 39, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (219, 39, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (220, 39, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (221, 39, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (222, 39, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (223, 39, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (224, 39, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (225, 42, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (226, 42, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (227, 42, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (228, 42, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (229, 42, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (230, 41, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (231, 41, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (232, 41, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (233, 41, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (234, 41, 7, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (235, 41, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (236, 41, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (237, 38, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (238, 38, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (239, 38, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (240, 38, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (241, 38, 8, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (242, 38, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (243, 38, 10, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (244, 38, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (245, 38, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (246, 37, 3, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (247, 37, 4, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (248, 37, 5, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (249, 37, 6, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (250, 37, 9, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (251, 37, 11, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (252, 37, 12, NULL, NULL);
INSERT INTO `cmf_product_profession` VALUES (253, 45, 4, NULL, NULL);

-- ----------------------------
-- Table structure for cmf_profession
-- ----------------------------
DROP TABLE IF EXISTS `cmf_profession`;
CREATE TABLE `cmf_profession`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '行业标签',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：1启用，0禁用',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品行业标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_profession
-- ----------------------------
INSERT INTO `cmf_profession` VALUES (1, '标签1', 1, 1731895491, 1732066647);
INSERT INTO `cmf_profession` VALUES (2, '标签2', 0, 1731898637, 1732066644);
INSERT INTO `cmf_profession` VALUES (3, 'Manufacturing', 1, 1732066662, NULL);
INSERT INTO `cmf_profession` VALUES (4, 'Construction', 1, 1732066671, NULL);
INSERT INTO `cmf_profession` VALUES (5, 'Energy', 1, 1732066677, NULL);
INSERT INTO `cmf_profession` VALUES (6, 'Transport', 1, 1732066683, NULL);
INSERT INTO `cmf_profession` VALUES (7, 'Metallurgy', 1, 1732066688, NULL);
INSERT INTO `cmf_profession` VALUES (8, 'Renewables', 1, 1732066695, NULL);
INSERT INTO `cmf_profession` VALUES (9, 'Electronics', 1, 1732066701, NULL);
INSERT INTO `cmf_profession` VALUES (10, 'Marine', 1, 1732066706, NULL);
INSERT INTO `cmf_profession` VALUES (11, 'Mining', 1, 1732066712, NULL);
INSERT INTO `cmf_profession` VALUES (12, 'Logistics', 1, 1732066718, NULL);

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NULL DEFAULT 0 COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' 回收站' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------
INSERT INTO `cmf_recycle_bin` VALUES (1, 2, 1730790090, 'portal_post', '360t双梁铸造起重机', 1);
INSERT INTO `cmf_recycle_bin` VALUES (2, 3, 1730790093, 'portal_post', '360t双梁铸造起重机', 1);
INSERT INTO `cmf_recycle_bin` VALUES (3, 1, 1730790096, 'portal_post', '320t四梁铸造起重机11', 1);
INSERT INTO `cmf_recycle_bin` VALUES (6, 15, 1731576516, 'portal_post', '助学2', 1);
INSERT INTO `cmf_recycle_bin` VALUES (8, 8, 1731576860, 'portal_category', '新闻中心', 0);
INSERT INTO `cmf_recycle_bin` VALUES (9, 14, 1731661297, 'portal_post', '助学1', 1);
INSERT INTO `cmf_recycle_bin` VALUES (10, 17, 1731910156, 'portal_category', '案例1', 0);
INSERT INTO `cmf_recycle_bin` VALUES (11, 18, 1731910160, 'portal_category', 'case1', 0);
INSERT INTO `cmf_recycle_bin` VALUES (14, 19, 1732159235, 'portal_category', 'case1', 0);
INSERT INTO `cmf_recycle_bin` VALUES (15, 66, 1732159855, 'portal_post', 'Xi \'an Railway Bureau new harmony type high-power locomotive maintenance project', 1);
INSERT INTO `cmf_recycle_bin` VALUES (16, 65, 1732159860, 'portal_post', 'Portal cranes for subway construction', 1);
INSERT INTO `cmf_recycle_bin` VALUES (17, 59, 1732159870, 'portal_post', 'KPT electric flat car', 1);
INSERT INTO `cmf_recycle_bin` VALUES (18, 58, 1732159873, 'portal_post', 'Electric flat car for aluminum coil transportation', 1);
INSERT INTO `cmf_recycle_bin` VALUES (19, 57, 1732159878, 'portal_post', 'Simulated water rescue crane', 1);
INSERT INTO `cmf_recycle_bin` VALUES (20, 61, 1732159881, 'portal_post', 'Automatic steel plate handling crane', 1);
INSERT INTO `cmf_recycle_bin` VALUES (21, 16, 1732160875, 'portal_post#page', 'Contact Us', 0);
INSERT INTO `cmf_recycle_bin` VALUES (22, 11, 1732160879, 'portal_post#page', 'FilialPietyCultur', 0);
INSERT INTO `cmf_recycle_bin` VALUES (23, 8, 1732160882, 'portal_post#page', 'AdvancedEquipment', 0);
INSERT INTO `cmf_recycle_bin` VALUES (24, 7, 1732160885, 'portal_post#page', 'LeadershipSpeech', 0);
INSERT INTO `cmf_recycle_bin` VALUES (25, 17, 1732160888, 'portal_post#page', 'Join Us', 0);
INSERT INTO `cmf_recycle_bin` VALUES (26, 33, 1732160905, 'portal_category', 'Transport', 0);
INSERT INTO `cmf_recycle_bin` VALUES (27, 72, 1732169691, 'portal_post', 'video2', 1);
INSERT INTO `cmf_recycle_bin` VALUES (28, 70, 1732169696, 'portal_post', 'video1', 1);
INSERT INTO `cmf_recycle_bin` VALUES (29, 69, 1732175910, 'portal_post', 'file1', 1);
INSERT INTO `cmf_recycle_bin` VALUES (30, 71, 1732439411, 'portal_post', 'Periodicals 1', 1);
INSERT INTO `cmf_recycle_bin` VALUES (31, 85, 1732519064, 'portal_post', 'Henan mine propaganda film', 1);

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'admin' COMMENT '角色类型',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', 'admin', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES (2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', 'admin', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'url路由表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
INSERT INTO `cmf_route` VALUES (1, 5000, 1, 2, 'portal/List/index?id=8', 'news');
INSERT INTO `cmf_route` VALUES (2, 4999, 1, 2, 'portal/Article/index?cid=8', 'news/:id');
INSERT INTO `cmf_route` VALUES (3, 10000, 0, 1, 'portal/index/intro', 'intro/:id');
INSERT INTO `cmf_route` VALUES (5, 10000, 1, 1, 'portal/index/culture', 'culture/:id');
INSERT INTO `cmf_route` VALUES (6, 10000, 1, 1, 'portal/index/honor', 'honor/:id');
INSERT INTO `cmf_route` VALUES (7, 10000, 1, 1, 'portal/index/product', 'product/:id');
INSERT INTO `cmf_route` VALUES (8, 10000, 0, 1, 'portal/index/product_info', 'product_info/:id');
INSERT INTO `cmf_route` VALUES (9, 10000, 1, 1, 'portal/index/activity', 'activity/:id');
INSERT INTO `cmf_route` VALUES (10, 10000, 1, 1, 'portal/index/activity_info', 'activity_info/:cid/:id');
INSERT INTO `cmf_route` VALUES (11, 10000, 1, 1, 'portal/index/responsibility', 'responsibility/:id');
INSERT INTO `cmf_route` VALUES (12, 10000, 1, 1, 'portal/index/responsibility_info', 'responsibility_info/:cid/:id');
INSERT INTO `cmf_route` VALUES (13, 10000, 1, 1, 'portal/index/quotation', 'quotation/:cid/:id');
INSERT INTO `cmf_route` VALUES (14, 10000, 1, 1, 'portal/index/reservation', 'reservation/:cid/:id');
INSERT INTO `cmf_route` VALUES (15, 10000, 1, 1, 'portal/index/search', 'search');
INSERT INTO `cmf_route` VALUES (16, 10000, 1, 1, 'portal/index/product', 'product');
INSERT INTO `cmf_route` VALUES (17, 1, 1, 2, 'portal/index/product?id=5', 'Single Girder Overhead Crane');
INSERT INTO `cmf_route` VALUES (18, 2, 1, 2, 'portal/index/product_info?cid=14&id=45', 'Jib Crane');
INSERT INTO `cmf_route` VALUES (19, 2, 1, 2, 'portal/index/product_info?cid=12&id=43', 'Electric Hoist');
INSERT INTO `cmf_route` VALUES (20, 2, 1, 2, 'portal/index/product_info?id=43', 'Wire Rope Hoist');
INSERT INTO `cmf_route` VALUES (21, 2, 1, 2, 'portal/index/product_info?id=45', 'Jib Crane');
INSERT INTO `cmf_route` VALUES (22, 1, 1, 2, 'portal/index/product?id=6', 'Double Girder Bridge Crane ');
INSERT INTO `cmf_route` VALUES (23, 1, 1, 2, 'portal/index/product?id=7', 'New Types/European Cranes');
INSERT INTO `cmf_route` VALUES (28, 5000, 1, 2, 'portal/List/index?id=19', 'case1');
INSERT INTO `cmf_route` VALUES (29, 4999, 1, 2, 'portal/Article/index?cid=19', 'case1/:id');
INSERT INTO `cmf_route` VALUES (30, 5000, 1, 2, 'portal/List/index?id=20', 'video1');
INSERT INTO `cmf_route` VALUES (31, 4999, 1, 2, 'portal/Article/index?cid=20', 'video1/:id');
INSERT INTO `cmf_route` VALUES (32, 5000, 1, 2, 'portal/List/index?id=21', 'video2');
INSERT INTO `cmf_route` VALUES (33, 4999, 1, 2, 'portal/Article/index?cid=21', 'video2/:id');
INSERT INTO `cmf_route` VALUES (34, 5000, 1, 2, 'portal/List/index?id=22', 'periodicals');
INSERT INTO `cmf_route` VALUES (35, 4999, 1, 2, 'portal/Article/index?cid=22', 'periodicals/:id');
INSERT INTO `cmf_route` VALUES (36, 5000, 1, 2, 'portal/List/index?id=23', 'honours');
INSERT INTO `cmf_route` VALUES (37, 4999, 1, 2, 'portal/Article/index?cid=23', 'honours/:id');
INSERT INTO `cmf_route` VALUES (38, 5000, 1, 2, 'portal/List/index?id=24', 'style');
INSERT INTO `cmf_route` VALUES (39, 4999, 1, 2, 'portal/Article/index?cid=24', 'style/:id');
INSERT INTO `cmf_route` VALUES (40, 5000, 1, 2, 'portal/List/index?id=25', 'equipment');
INSERT INTO `cmf_route` VALUES (41, 4999, 1, 2, 'portal/Article/index?cid=25', 'equipment/:id');
INSERT INTO `cmf_route` VALUES (42, 5000, 1, 2, 'portal/List/index?id=26', 'culture');
INSERT INTO `cmf_route` VALUES (43, 4999, 1, 2, 'portal/Article/index?cid=26', 'culture/:id');
INSERT INTO `cmf_route` VALUES (44, 5000, 1, 2, 'portal/List/index?id=27', 'responsibility');
INSERT INTO `cmf_route` VALUES (45, 4999, 1, 2, 'portal/Article/index?cid=27', 'responsibility/:id');
INSERT INTO `cmf_route` VALUES (46, 10000, 1, 1, 'portal/index/service', 'service');
INSERT INTO `cmf_route` VALUES (47, 10000, 1, 1, 'portal/index/download', 'download');
INSERT INTO `cmf_route` VALUES (48, 10000, 1, 1, 'portal/index/contact', 'contact');
INSERT INTO `cmf_route` VALUES (49, 2, 1, 2, 'portal/index/product_info?id=25', 'New Types Heavy Duty Overhead Crane');
INSERT INTO `cmf_route` VALUES (50, 2, 1, 2, 'portal/index/product_info?id=24', 'European double girder overhead crane');
INSERT INTO `cmf_route` VALUES (51, 2, 1, 2, 'portal/index/product_info?id=23', 'New Types Bridge Crane');
INSERT INTO `cmf_route` VALUES (52, 2, 1, 2, 'portal/index/product_info?id=16', 'Grab, Magnet Two Purpose Bridge Crane');
INSERT INTO `cmf_route` VALUES (53, 2, 1, 2, 'portal/index/product_info?id=15', 'Insulation Overhead Crane');
INSERT INTO `cmf_route` VALUES (54, 2, 1, 2, 'portal/index/product_info?id=17', 'Grab, Hook Overhead/Bridge Crane');
INSERT INTO `cmf_route` VALUES (55, 2, 1, 2, 'portal/index/product_info?id=14', 'Explosion Proof Overhead Crane');
INSERT INTO `cmf_route` VALUES (56, 2, 1, 2, 'portal/index/product_info?id=13', 'Double Trolley Overhead Crane');
INSERT INTO `cmf_route` VALUES (57, 2, 1, 2, 'portal/index/product_info?id=12', 'Hang Beam Overhead Crane');
INSERT INTO `cmf_route` VALUES (58, 2, 1, 2, 'portal/index/product_info?id=11', 'Magnet Overhead Crane');
INSERT INTO `cmf_route` VALUES (59, 2, 1, 2, 'portal/index/product_info?id=10', 'Grab Double Girder Overhead Crane');
INSERT INTO `cmf_route` VALUES (60, 2, 1, 2, 'portal/index/product_info?id=9', 'Hook Overhead Crane');
INSERT INTO `cmf_route` VALUES (61, 2, 1, 2, 'portal/index/product_info?id=8', 'Hoist Overhead Crane');
INSERT INTO `cmf_route` VALUES (62, 2, 1, 2, 'portal/index/product_info?id=22', 'Flexible Crane');
INSERT INTO `cmf_route` VALUES (63, 2, 1, 2, 'portal/index/product_info?id=7', 'Explosion proof Overhead Crane');
INSERT INTO `cmf_route` VALUES (64, 2, 1, 2, 'portal/index/product_info?id=6', 'Suspension Overhead Crane');
INSERT INTO `cmf_route` VALUES (65, 2, 1, 2, 'portal/index/product_info?id=5', 'Grab Overhead Crane');
INSERT INTO `cmf_route` VALUES (66, 2, 1, 2, 'portal/index/product_info?id=4', 'Partial Hang Overhead Crane');
INSERT INTO `cmf_route` VALUES (67, 2, 1, 2, 'portal/index/product_info?id=3', 'Low Headroom Overhead Crane');
INSERT INTO `cmf_route` VALUES (68, 2, 1, 2, 'portal/index/product_info?id=2', 'Single girder overhead crane');
INSERT INTO `cmf_route` VALUES (69, 10000, 1, 1, 'portal/index/intro?id=4', 'profile');
INSERT INTO `cmf_route` VALUES (70, 2, 1, 2, 'portal/index/product_info?id=21', 'Single Girder Hoist Gantry Crane');
INSERT INTO `cmf_route` VALUES (71, 1, 1, 2, 'portal/index/product?id=8', 'Single Girder Gantry Crane');
INSERT INTO `cmf_route` VALUES (72, 1, 1, 2, 'portal/index/product?id=9', 'Double Girder Gantry Crane');
INSERT INTO `cmf_route` VALUES (73, 1, 1, 2, 'portal/index/product?id=11', 'Ladle/Foundry Crane');
INSERT INTO `cmf_route` VALUES (74, 1, 1, 2, 'portal/index/product?id=12', 'Electric Hoist/Lift');
INSERT INTO `cmf_route` VALUES (75, 1, 1, 2, 'portal/index/product?id=14', 'Pillar/Wall-Mounted Jib Crane');
INSERT INTO `cmf_route` VALUES (76, 5000, 1, 2, 'portal/index/about?id=22', 'periodicals');
INSERT INTO `cmf_route` VALUES (77, 4999, 1, 2, 'portal/index/about_info?cid=22', 'periodicals/:id');
INSERT INTO `cmf_route` VALUES (78, 5000, 1, 2, 'portal/index/about?id=23', 'honours');
INSERT INTO `cmf_route` VALUES (79, 4999, 1, 2, 'portal/index/about_info?cid=23', 'honours/:id');
INSERT INTO `cmf_route` VALUES (80, 5000, 1, 2, 'portal/index/about?id=24', 'style');
INSERT INTO `cmf_route` VALUES (81, 4999, 1, 2, 'portal/index/about_info?cid=24', 'style/:id');
INSERT INTO `cmf_route` VALUES (82, 5000, 1, 2, 'portal/index/about?id=25', 'equipment');
INSERT INTO `cmf_route` VALUES (83, 4999, 1, 2, 'portal/index/about_info?cid=25', 'equipment/:id');
INSERT INTO `cmf_route` VALUES (84, 5000, 1, 2, 'portal/index/about?id=26', 'culture');
INSERT INTO `cmf_route` VALUES (85, 4999, 1, 2, 'portal/index/about_info?cid=26', 'culture/:id');
INSERT INTO `cmf_route` VALUES (86, 5000, 1, 2, 'portal/index/about?id=27', 'responsibility');
INSERT INTO `cmf_route` VALUES (87, 4999, 1, 2, 'portal/index/about_info?cid=27', 'responsibility/:id');
INSERT INTO `cmf_route` VALUES (88, 10000, 1, 1, 'portal/index/video', 'video');
INSERT INTO `cmf_route` VALUES (89, 10000, 1, 1, 'portal/index/video_info', 'video-&lt;id&gt;');
INSERT INTO `cmf_route` VALUES (90, 5000, 1, 2, 'portal/index/case?id=28', 'metallurgy');
INSERT INTO `cmf_route` VALUES (91, 4999, 1, 2, 'portal/index/case_info?cid=28', 'metallurgy/:id');
INSERT INTO `cmf_route` VALUES (92, 5000, 1, 2, 'portal/index/case?id=29', 'port');
INSERT INTO `cmf_route` VALUES (93, 4999, 1, 2, 'portal/index/case_info?cid=29', 'port/:id');
INSERT INTO `cmf_route` VALUES (94, 5000, 1, 2, 'portal/index/case?id=30', 'machining');
INSERT INTO `cmf_route` VALUES (95, 4999, 1, 2, 'portal/index/case_info?cid=30', 'machining/:id');
INSERT INTO `cmf_route` VALUES (96, 5000, 1, 2, 'portal/index/case?id=31', 'logistics');
INSERT INTO `cmf_route` VALUES (97, 4999, 1, 2, 'portal/index/case_info?cid=31', 'logistics/:id');
INSERT INTO `cmf_route` VALUES (98, 5000, 1, 2, 'portal/index/case?id=32', 'transport');
INSERT INTO `cmf_route` VALUES (99, 4999, 1, 2, 'portal/index/case_info?cid=32', 'transport/:id');
INSERT INTO `cmf_route` VALUES (100, 5000, 1, 2, 'portal/index/case?id=34', 'construction');
INSERT INTO `cmf_route` VALUES (101, 4999, 1, 2, 'portal/index/case_info?cid=34', 'construction/:id');
INSERT INTO `cmf_route` VALUES (102, 2, 1, 2, 'portal/index/product_info?id=20', 'Hoist Semi Gantry Crane');
INSERT INTO `cmf_route` VALUES (103, 2, 1, 2, 'portal/index/product_info?id=33', 'Portable/Mini gantry crane');
INSERT INTO `cmf_route` VALUES (104, 10000, 1, 1, 'portal/index/case', 'case');
INSERT INTO `cmf_route` VALUES (105, 2, 1, 2, 'portal/index/product_info?id=19', 'L Hook Gantry Crane');
INSERT INTO `cmf_route` VALUES (106, 2, 1, 2, 'portal/index/product_info?id=18', 'L Hoist Gantry Crane');
INSERT INTO `cmf_route` VALUES (107, 2, 1, 2, 'portal/index/product_info?id=32', 'Rail Container Gantry Crane');
INSERT INTO `cmf_route` VALUES (108, 2, 1, 2, 'portal/index/product_info?id=26', 'Rubber Tyre Container Crane');
INSERT INTO `cmf_route` VALUES (109, 2, 1, 2, 'portal/index/product_info?id=27', 'Shipbuild Gantry Crane');
INSERT INTO `cmf_route` VALUES (110, 2, 1, 2, 'portal/index/product_info?id=28', 'Grab Gantry Crane');
INSERT INTO `cmf_route` VALUES (111, 2, 1, 2, 'portal/index/product_info?id=29', 'Double Girder Semi Gantry Crane');
INSERT INTO `cmf_route` VALUES (112, 2, 1, 2, 'portal/index/product_info?id=30', 'A typed Hook Gantry Crane');
INSERT INTO `cmf_route` VALUES (113, 2, 1, 2, 'portal/index/product_info?id=31', 'U typed Hook Gantry Crane');
INSERT INTO `cmf_route` VALUES (114, 2, 1, 2, 'portal/index/product_info?id=34', 'Cast/Ladle/Foundry Crane');
INSERT INTO `cmf_route` VALUES (115, 2, 1, 2, 'portal/index/product_info?id=36', 'Double Girder Heavy Ladle Crane');
INSERT INTO `cmf_route` VALUES (116, 2, 1, 2, 'portal/index/product_info?id=40', 'Cast/ladle/foundry Crane');
INSERT INTO `cmf_route` VALUES (117, 2, 1, 2, 'portal/index/product_info?id=35', 'Four Girder Cast/ladle/foundry Crane');
INSERT INTO `cmf_route` VALUES (118, 2, 1, 2, 'portal/index/product_info?id=39', 'Electric Chain Hoist');
INSERT INTO `cmf_route` VALUES (119, 2, 1, 2, 'portal/index/product_info?id=42', 'Explosion Proof Electric Hoist');
INSERT INTO `cmf_route` VALUES (120, 2, 1, 2, 'portal/index/product_info?id=41', 'Metallurgical/Ladle/Foundry Electric Hoist');
INSERT INTO `cmf_route` VALUES (121, 2, 1, 2, 'portal/index/product_info?id=38', 'New Types/European hoist');
INSERT INTO `cmf_route` VALUES (122, 2, 1, 2, 'portal/index/product_info?id=37', 'Low headroom hoist');

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES (1, 1, 0, '首页轮播图', '');
INSERT INTO `cmf_slide` VALUES (2, 1, 0, '单页图片', '');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT 0 COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '幻灯片内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slide_id`(`slide_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片子项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------
INSERT INTO `cmf_slide_item` VALUES (1, 1, 1, 10000, 'banner1', 'admin/20241124/d31b72fa8b35c167cbd0f58810f94ef2.webp', '', '_blank', '', '', NULL);
INSERT INTO `cmf_slide_item` VALUES (2, 2, 1, 10000, '页面图片', 'admin/20241124/42e6896f43ab02a8b20e05e6fc618ac4.webp', '', '_blank', '单页面', '', NULL);
INSERT INTO `cmf_slide_item` VALUES (3, 1, 1, 10000, 'banner2', 'admin/20241124/1c2c38901e2c149fe7a93342472d7484.webp', '', '_blank', '', '', NULL);
INSERT INTO `cmf_slide_item` VALUES (4, 1, 1, 10000, 'banner3', 'admin/20241124/a6a95102abb1eedaa78073efc05465a8.webp', '', '_blank', '', '', NULL);
INSERT INTO `cmf_slide_item` VALUES (5, 1, 1, 10000, 'banner4', 'admin/20241124/56406084c1591448738bb9366421601b.webp', '', '_blank', '', '', NULL);
INSERT INTO `cmf_slide_item` VALUES (6, 1, 1, 10000, 'banner5', 'admin/20241124/c2c622ed0d9f63ea43e1573d0729e5d1.webp', '', '_blank', '', '', NULL);
INSERT INTO `cmf_slide_item` VALUES (7, 1, 1, 10000, 'banner6', 'admin/20241124/e99d9bf1295c04bec15a54468bcdde3c.webp', '', '_blank', '', '', NULL);

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES (2, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '本站用户id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'access_token过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '绑定时间',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方唯一码',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT 0 COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '用户积分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES (1, 1, 0, 0, 1732782768, 0, 0, 0.00, 1730269218, 1, 'admin', '###f05ce9a5339ddace832b219544b15b00', 'admin', 'admin@admin.com', '', '', '', '127.0.0.1', '', '', NULL);

-- ----------------------------
-- Table structure for cmf_user_access_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_access_log`;
CREATE TABLE `cmf_user_access_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT 0 COMMENT '提交信息id',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ip',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '访问路径',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求参数',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `message_id`(`message_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户访问记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_access_log
-- ----------------------------
INSERT INTO `cmf_user_access_log` VALUES (1, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (2, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (3, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (4, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (5, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (6, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (7, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (8, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (9, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (10, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (11, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (12, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (13, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (14, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (15, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (16, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (17, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (18, 23, '127.0.0.1', '/Jib%20Crane.html', '/Jib%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (19, 23, '127.0.0.1', '/product.html', '/product.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (20, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (21, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (22, 23, '127.0.0.1', '/product.html', '/product.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (23, 23, '127.0.0.1', '/contact.html', '/contact.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (24, 23, '127.0.0.1', '/download.html', '/download.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (25, 23, '127.0.0.1', '/video.html', '/video.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (26, 23, '127.0.0.1', '/service.html', '/service.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (27, 23, '127.0.0.1', '/case.html', '/case.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (28, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (29, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (30, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (31, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (32, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (33, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (34, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (35, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (36, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (37, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (38, 23, '127.0.0.1', '/', '/', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (39, 23, '127.0.0.1', '/Low%20Headroom%20Overhead%20Crane.html', '/Low%20Headroom%20Overhead%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (40, 23, '127.0.0.1', '/product.html', '/product.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (41, 23, '127.0.0.1', '/Single%20Girder%20Overhead%20Crane.html?weight=&profession_ids=', '/Single%20Girder%20Overhead%20Crane.html?weight=&profession_ids=', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (42, 23, '127.0.0.1', '/Single%20Girder%20Overhead%20Crane.html?weight=0.5t&profession_ids=', '/Single%20Girder%20Overhead%20Crane.html?weight=0.5t&profession_ids=', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (43, 23, '127.0.0.1', '/product.html', '/product.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (44, 23, '127.0.0.1', '/product.html?weight=&profession_ids=3', '/product.html?weight=&profession_ids=3', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (45, 23, '127.0.0.1', '/product.html?weight=&profession_ids=3%2C4', '/product.html?weight=&profession_ids=3%2C4', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (46, 23, '127.0.0.1', '/product.html?weight=&profession_ids=3%2C4%2C5', '/product.html?weight=&profession_ids=3%2C4%2C5', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (47, 23, '127.0.0.1', '/product.html?weight=&profession_ids=3%2C4%2C5%2C6', '/product.html?weight=&profession_ids=3%2C4%2C5%2C6', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (48, 23, '127.0.0.1', '/Grab%20Double%20Girder%20Overhead%20Crane.html', '/Grab%20Double%20Girder%20Overhead%20Crane.html', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (49, 23, '127.0.0.1', '/portal/index/inquiry', '/portal/index/inquiry', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (50, 23, '127.0.0.1', '/portal/index/inquiry', '/portal/index/inquiry', 1732691626);
INSERT INTO `cmf_user_access_log` VALUES (51, 24, '127.0.0.1', '/Grab%20Double%20Girder%20Overhead%20Crane.html', '{\"\\/Grab_Double_Girder_Overhead_Crane_html\":\"\",\"id\":\"10\"}', 1732691751);
INSERT INTO `cmf_user_access_log` VALUES (52, 24, '127.0.0.1', '/portal/index/inquiry', '{\"name\":\" \\u6865\\u5f0f\\u8d77\\u91cd\\u673a\",\"phone\":\"1\",\"email\":\"846413979@qq.com\",\"content\":\"\",\"product_id\":\"10\",\"lifting_capacity\":[\"0\"],\"lifting_height\":\"0,26\",\"span\":\"10.5,31.5\",\"operating_voltage\":\"380V\",\"operating_herts\":\"50Hz\",\"job_level\":[\"0\"],\"type\":\"1\"}', 1732691751);

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT 0 COMMENT '奖励次数',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期时间值',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行操作的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES (1, 1, 1, 1, 2, 1, '用户登录', 'login', 'user', '');
INSERT INTO `cmf_user_action` VALUES (2, 1, 0, 1, 1, 1, '用户行为演示', 'demo_test', 'demo', '{\"action\":\"demo\\/Test\\/test\",\"param\":{\"id\":1}}');

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后访问时间',
  `object` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_object_action`(`user_id`, `object`, `action`) USING BTREE,
  INDEX `user_object_action_ip`(`user_id`, `object`, `action`, `ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `change` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改余额',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改后余额',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户余额变更日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '收藏内容原来的主键id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '内容原来的主键id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容的描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '锁定时间',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录尝试表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作积分等奖励日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户客户端登录 token 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES (1, 1, 1745821314, 1730269314, 'a2804785513997822595418da53ba8a391bbd5f10f4afacf88d15693a174b6a0', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机邮箱数字验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
