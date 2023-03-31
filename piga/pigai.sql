/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : pigai

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 25/04/2021 10:40:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add user', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (26, 'Can change user', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (28, 'Can view user', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add 用户', 8, 'add_user');
INSERT INTO `auth_permission` VALUES (30, 'Can change 用户', 8, 'change_user');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 用户', 8, 'delete_user');
INSERT INTO `auth_permission` VALUES (32, 'Can view 用户', 8, 'view_user');
INSERT INTO `auth_permission` VALUES (33, 'Can add captcha store', 9, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (34, 'Can change captcha store', 9, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (35, 'Can delete captcha store', 9, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (36, 'Can view captcha store', 9, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (37, 'Can add 记录', 10, 'add_record');
INSERT INTO `auth_permission` VALUES (38, 'Can change 记录', 10, 'change_record');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 记录', 10, 'delete_record');
INSERT INTO `auth_permission` VALUES (40, 'Can view 记录', 10, 'view_record');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$PKZnf5b7xGx1$MBm7RVISbaL975N2Ry4wZpmXitBRBqy4mI9PILiU7tQ=', '2020-06-26 20:40:24.366860', 1, 'admin', '', '', '17860536827@163.com', 1, 1, '2020-06-26 10:15:04.871321');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (8, 'JLPL', 'jlpl', 'bbd6bb9ee36defdecee7bbec9e2fc947e9cd064e', '2020-07-02 13:53:08.126290');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-06-26 11:29:17.668603', '1', 'test1', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-06-26 11:29:29.544609', '2', 'test2', 1, '[{\"added\": {}}]', 8, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (9, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'login', 'record');
INSERT INTO `django_content_type` VALUES (8, 'login', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'usermng', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-06-25 22:36:17.258618');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-06-25 22:36:17.498975');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-06-25 22:36:17.939848');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-06-25 22:36:18.060573');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-25 22:36:18.074564');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-06-25 22:36:18.172303');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-06-25 22:36:18.229153');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-06-25 22:36:18.289003');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-06-25 22:36:18.301927');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-06-25 22:36:18.354814');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-06-25 22:36:18.360800');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-25 22:36:18.373764');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-06-25 22:36:18.431835');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-25 22:36:18.489706');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-06-25 22:36:18.546526');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-06-25 22:36:18.559566');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2020-06-25 22:36:18.591481');
INSERT INTO `django_migrations` VALUES (18, 'login', '0001_initial', '2020-06-26 10:11:44.504145');
INSERT INTO `django_migrations` VALUES (19, 'captcha', '0001_initial', '2020-06-26 11:14:52.517921');
INSERT INTO `django_migrations` VALUES (20, 'login', '0002_record', '2020-06-29 16:18:35.095577');
INSERT INTO `django_migrations` VALUES (21, 'login', '0003_auto_20200629_1709', '2020-06-29 17:09:38.275825');
INSERT INTO `django_migrations` VALUES (22, 'login', '0002_auto_20200629_1752', '2020-06-29 17:52:49.635309');
INSERT INTO `django_migrations` VALUES (23, 'login', '0003_auto_20200629_1755', '2020-06-29 17:55:53.735494');
INSERT INTO `django_migrations` VALUES (24, 'login', '0004_auto_20200630_0620', '2020-06-30 06:20:20.125327');
INSERT INTO `django_migrations` VALUES (25, 'login', '0005_auto_20200630_0625', '2020-06-30 06:25:25.190803');
INSERT INTO `django_migrations` VALUES (26, 'login', '0006_auto_20200630_1014', '2020-06-30 10:14:41.770624');
INSERT INTO `django_migrations` VALUES (27, 'login', '0007_auto_20200630_1015', '2020-06-30 10:15:18.330495');
INSERT INTO `django_migrations` VALUES (28, 'login', '0008_auto_20200630_1944', '2020-06-30 19:44:26.507507');
INSERT INTO `django_migrations` VALUES (29, 'login', '0009_auto_20200630_2230', '2020-06-30 22:31:02.759396');
INSERT INTO `django_migrations` VALUES (30, 'login', '0010_auto_20200701_0946', '2020-07-01 09:46:28.498942');
INSERT INTO `django_migrations` VALUES (31, 'login', '0011_auto_20200701_0959', '2020-07-01 09:59:51.579323');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('exw994rf13oriq8bzl8umww6g3o921bk', 'NGViNGNjODBlM2FkNTBhNzkyNDY0MWEzNTYwMTc4ZWM4MjdhM2IxODp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyX2lkIjoxMDAzLCJ1c2VyX25hbWUiOiJ0ZXN0MyJ9', '2020-07-16 13:48:33.218004');

-- ----------------------------
-- Table structure for login_record
-- ----------------------------
DROP TABLE IF EXISTS `login_record`;
CREATE TABLE `login_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录号',
  `sid` varchar(253) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `compos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生原文',
  `revise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改结果',
  `trevise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师修改内容',
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师工号',
  `stime` datetime(6) NOT NULL COMMENT '\r\n学生修改时间',
  `label` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '\r\n教师修改标志是否修改（已修改 0；未修改 1）',
  `sclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生班级\r\n',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_record
-- ----------------------------
INSERT INTO `login_record` VALUES (2, '100003', '李华', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思，爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '1001', '2020-06-29 17:56:01.862620', '1', '一年级');
INSERT INTO `login_record` VALUES (8, '100003', '李华', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思，爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '1002', '2020-06-30 06:21:48.438474', '1', '一年级');
INSERT INTO `login_record` VALUES (14, '100005', '李梅', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思，爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '1003', '2020-06-30 06:24:14.695688', '1', '二年级');
INSERT INTO `login_record` VALUES (15, '100005', '李梅', '放暑假了，我们许多同学都报了班，我也选了一个班——中华口才班，我上的这个班它主要是培养自信，勇气和胆量，让我们长大了可以更好的和别人交流。', '放暑假了，我们许多同学都报了班。我也选了一个班——中华口才班，我上的这个班它主要是培养自信、勇气和胆量，让我们长大了可以更好的和别人交流。', '无', '1001', '2020-06-30 22:25:06.000000', '0', ' 二年级');
INSERT INTO `login_record` VALUES (16, '819429200@qq.com', '李子维', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思，爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！', '我的名字叫“陈奕欣”，陈是左耳旁和一个东字组成的，奕是神采奕奕的意思，欣是欣欣向荣的意思。爸爸和妈妈给我起这个名字，是希望我每天都精气十足、积极向上，长大了做一个对祖国有用的人，我相信，我一定会加油的！ ', '1002', '2020-07-01 00:21:22.000000', '1', '一年级');
INSERT INTO `login_record` VALUES (17, '100005', '李梅', '放暑假了，我们许多同学都报了班，我也选了一个班——中华口才班，我上的这个班它主要是培养自信，勇气和胆量，让我们长大了可以更好的和别人交流。', '放暑假了，我们许多同学都报了班。我也选了一个班——中华口才班，我上的这个班它主要是培养自信、勇气和胆量，让我们长大了可以更好的和别人交流。', '放暑假了，我们许多同学都报了班。我也选了一个班——中华口才班，我上的这个班它主要是培养自信、勇气和胆量，让我们长大了可以更好的和别人交流。', '1001', '2020-07-01 00:21:25.000000', '1', '二年级');
INSERT INTO `login_record` VALUES (18, '100005', '李梅', '天上星星的眼睛一眨一眨的，好像在说“小朋友，你叫什么。”', '天上星星的眼睛一眨一眨的，好像在说：“小朋友，你叫什么？”', '天上星星的眼睛一眨一眨的，好像在说：“小朋友，你叫什么？”', '1001', '2020-07-01 00:21:30.000000', '1', '二年级');
INSERT INTO `login_record` VALUES (19, '100005', '李梅', '“感恩的心，感谢有你，伴我一生，让我有勇气做我自己，感恩的心，感谢有你，花开花谢我一样会珍惜。”整个五月，六月甚至这一年都可以听到这样的歌声。', '“感恩的心，感谢有你，伴我一生，让我有勇气做我自己，感恩的心，感谢有你，花开花谢我一样会珍惜。”整个五月、六月甚至这一年都可以听到这样的歌声。', '无', '1001', '2020-07-01 00:21:35.000000', '0', '二年级');
INSERT INTO `login_record` VALUES (20, '819429200@qq.com', '李子维', '春天来了，小草偷偷地从土地里探出嫩绿的小脑袋，好奇的打探着这个新奇的世界，不仅小草钻出了地面，许多不知名的花儿也不甘示弱，纷纷争先恐后的绽放自己那迷人的花朵。散发出缕缕清幽的芳香，相互攀比着，争艳着，为春天又增添一道亮丽的风景线。', '春天来了，小草偷偷地从土地里探出嫩绿的小脑袋，好奇的打探着这个新奇的世界。不仅小草钻出了地面，许多不知名的花儿也不甘示弱，纷纷争先恐后的绽放自己那迷人的花朵，散发出缕缕清幽的芳香，相互攀比着，争艳着，为春天又增添一道亮丽的风景线。', '无', '1001', '2020-06-30 18:21:47.000000', '0', '一年级');
INSERT INTO `login_record` VALUES (21, '100002', '里尔', '小树醒了，沾着露水；花朵醒了，它与露珠做了一个甜甜的梦。小鸟醒了，亮出了清脆的歌声，奔向蓝天博大的怀抱。', '小树醒了，沾着露水；花朵醒了，它与露珠做了一个甜甜的梦；小鸟醒了，亮出了清脆的歌声，奔向蓝天博大的怀抱。', '小树醒了，沾着露水；花朵醒了，它与露珠做了一个甜甜的梦；小鸟醒了，亮出了清脆的歌声，奔向蓝天博大的怀抱。', '1002', '2020-06-29 17:21:57.000000', '1', '三年级');
INSERT INTO `login_record` VALUES (22, '100002', '里尔', '不一会儿，我们掉落在草地上，仰目朝天，呀！真美啊！蔚蓝的天空中，飘着几朵白云，如同几只毛茸茸的白色小绵羊似的，在空中顽皮地玩着。', '不一会儿，我们掉落在草地上，仰目朝天。呀，真美啊！蔚蓝的天空中，飘着几朵白云，如同几只毛茸茸的白色小绵羊似的，在空中顽皮地玩着。', '无', '1003', '2020-06-29 11:22:09.000000', '0', '三年级');
INSERT INTO `login_record` VALUES (23, '100001', '婉儿', '银杏树听了大笑说：“哈哈哈，我才是最强的。我有一亿多年的历史呢？而且我还天天保护大自然的空气，所以我才是最棒的。”', '银杏树听了大笑说：“哈哈哈，我才是最强的！我有一亿多年的历史呢！而且我还天天保护大自然的空气，所以我才是最棒的。”', '无', '1002', '2020-06-23 15:22:19.000000', '0', '三年级');
INSERT INTO `login_record` VALUES (24, '100002', '里尔', '大家好！我叫傅凯昕，我是光泽县华桥乡华桥中心小学五年级一班的一位小学生。我的兴趣爱好有很多：打羽毛球，看课外书、画画、游泳、旅游、做手工作品、看电视……总之有好多好多，自己都数不清了！', '大家好！我叫傅凯昕，我是光泽县华桥乡华桥中心小学五年级一班的一位小学生。我的兴趣爱好有很多：打羽毛球，看课外书，画画，游泳，旅游，做手工作品，看电视……总之有好多好多，自己都数不清了。', '无', '1001', '2020-06-26 18:22:31.000000', '0', '三年级');
INSERT INTO `login_record` VALUES (25, '100003', '李华', '小蒜，快快地长吧。水我管你够喝，相信你会用绿色报答我！', '小蒜，快快地长吧！水我管你够喝，相信你会用绿色报答我！', '小蒜，快快地长吧！水我管你够喝，相信你会用绿色报答我！', '1002', '2020-06-29 08:22:42.000000', '1', '一年级');
INSERT INTO `login_record` VALUES (26, '100008', '王五', '记得小时候，每一次受了委屈，奶奶都会带着我坐在院子里的秋千上，我都会挨在奶奶的怀里，哇哇地哭个不停，奶奶就用手轻轻的拍着我的背，任阳光懒懒的趴在我的背上，哄我入睡。', '记得小时候，每一次受了委屈，奶奶都会带着我坐在院子里的秋千上，我都会挨在奶奶的怀里，哇哇地哭个不停，奶奶就用手轻轻的拍着我的背，任阳光懒懒的趴在我的背上，哄我入睡。', '无', '1001', '2020-06-26 08:22:51.000000', '0', '四年级');
INSERT INTO `login_record` VALUES (27, '100007', '韩梅梅', '阳春，踏在松软的泥土上，那微微的黛色竟让我有些许不忍心。俯身捻起一撮新草，清香的气息已满溢鼻腔，指尖上留下轻轻地草色，望着脚下这淡淡的青韵，让我想起文人笔下的初春，是的！我见过，在朱自清的笔下，在老舍的梦中，在冰心的眼里……', '阳春，踏在松软的泥土上，那微微的黛色竟让我有些许不忍心。俯身捻起一撮新草，清香的气息已满溢鼻腔，指尖上留下轻轻地草色，望着脚下这淡淡的青韵，让我想起文人笔下的初春。是的，我见过，在朱自清的笔下，在老舍的梦中，在冰心的眼里……', '无', '1001', '2020-06-20 10:14:11.000000', '0', '六年级');
INSERT INTO `login_record` VALUES (28, '100004', '张三', '对于《唐山大地震》可以说看了让整个人的身心都受到深深的震撼当中，在心里久久的回荡，挥之不去。整个故事围绕的是一个人类历史上可怕的一次灾难性自然灾害，一个母亲在带着自己的孩子如何经历这次灾难，如何在最困难最无奈的时候面临着人生最痛苦的抉择，在只能选择放弃一个自己的骨肉的时候那种无奈，那种情景，太让人感动了，有时候想一想，人类的确是很渺小的，对于灾难我们只能选择接受，只能忍受，只能看着自己的亲人离去而什么都做不了，在灾难面前我们只能选择我们能做到得的，只能把灾难减少到最小，只能含泪的抉择，很无奈。', '对于《唐山大地震》可以说看了让整个人的身心都受到深深的震撼当中，在心里久久的回荡，挥之不去。整个故事围绕的是一个人类历史上可怕的一次灾难性自然灾害，一个母亲在带着自己的孩子如何经历这次灾难，如何在最困难最无奈的时候面临着人生最痛苦的抉择，在只能选择放弃一个自己的骨肉的时候那种无奈，那种情景，太让人感动了。有时候想一想，人类的确是很渺小的，对于灾难我们只能选择接受，只能忍受，只能看着自己的亲人离去而什么都做不了，在灾难面前我们只能选择我们能做到得的，只能把灾难减少到最小，只能含泪的抉择，很无奈。', '无', '1001', '2020-06-17 11:13:39.000000', '0', '四年级');
INSERT INTO `login_record` VALUES (29, '100008', '王五', '我忽然灵机一动，为自己找台阶下。我微微翘了一下嘴角，说：“有什么好看的，没看过美女吗？呵呵，不要迷恋姐，姐只是个神话。”同学们一听这些话，有的使劲憋住笑，有的抱着肚子咯咯咯的笑个不停，有的甚至都笑得脸都酸了。看到这情景，我心里充满了疑问，我找借口有那么烂吗？真是丈二和尚——摸不头脑。', '我忽然灵机一动，为自己找台阶下。我微微翘了一下嘴角，说：“有什么好看的，没看过美女吗？呵呵，不要迷恋姐，姐只是个神话！”同学们一听这些话，有的使劲憋住笑，有的抱着肚子咯咯咯的笑个不停，有的甚至都笑得脸都酸了……看到这情景，我心里充满了疑问，我找借口有那么烂吗？真是丈二和尚——摸不头脑。', '无', '1003', '2020-06-28 12:30:55.000000', '0', '四年级');
INSERT INTO `login_record` VALUES (30, '100006', '李雷', '这个学期，让我最难忘的事要数当扶助员了。当我听到要当扶助员的消息后，叫苦连天，因为天气这么冷，还要7点半准时到校，要不是爸爸不停地鼓励我并答应给我10元的奖励，我还真没完没了地抱怨呢？', '这个学期，让我最难忘的事要数当扶助员了。当我听到要当扶助员的消息后，叫苦连天，因为天气这么冷，还要7点半准时到校。要不是爸爸不停地鼓励我并答应给我10元的奖励，我还真没完没了地抱怨呢！', '无', '1001', '2020-06-30 12:19:08.000000', '0', '五年级');
INSERT INTO `login_record` VALUES (31, '100006', '李雷', '随着尤老师一声令下：“比赛开始！”篮球便在空中划过一道美丽的弧线，犹如新娘抛绣球一样，一场“篮球争夺战”就此拉开序幕，队员们个个生龙活虎，摩拳擦掌，恨不得立刻把篮球投入框中，两支队伍的队员你争我抢，一旁围观的同学则拼命地喝彩，声音响彻四周。', '随着尤老师一声令下：“比赛开始！”篮球便在空中划过一道美丽的弧线，犹如新娘抛绣球一样，一场“篮球争夺战”就此拉开序幕。队员们个个生龙活虎，摩拳擦掌，恨不得立刻把篮球投入框中。两支队伍的队员你争我抢，一旁围观的同学则拼命地喝彩，声音响彻四周。', '无', '1002', '2020-06-30 08:18:18.000000', '0', '五年级');
INSERT INTO `login_record` VALUES (32, '100008', '王五', '至于我所走过的地方，可谓是足迹遍天下。我见过庄严雄伟的长城，见过海南岛上的热带雨林，还见过有着数百年历史的，典雅朴素的丽江古城。我走过风景秀丽的大罗山，爬过峰峦叠嶂的黄山，登过巍峨雄伟的玉龙雪山。每一次旅行，都让我无法忘怀！', '至于我所走过的地方，可谓是足迹遍天下。我见过庄严雄伟的长城，见过海南岛上的热带雨林，还见过有着数百年历史的、典雅朴素的丽江古城。我走过风景秀丽的大罗山，爬过峰峦叠嶂的黄山，登过巍峨雄伟的玉龙雪山。每一次旅行，都让我无法忘怀！', '无', '1002', '2020-06-18 12:19:30.000000', '0', '四年级');
INSERT INTO `login_record` VALUES (33, '100009', '赵六', '突然，它听见枯井里有什么东西在喊：“救命啊！救命啊！”笑笑走上前一看，原来是小松鼠蹦蹦，它惊讶地问道：“蹦蹦，你怎么会掉进枯井里了呀！”“我玩得太高兴，所以，一不小心，就掉进了这里。”蹦蹦哭着回答道。笑笑很自信地说道：“蹦蹦，你别哭，我自有办法把你给救上来。”“什么办法！”蹦蹦问道。“到时候你就明白了。”笑笑说完，就一溜烟地跑了。', '突然，它听见枯井里有什么东西在喊：“救命啊！救命啊！”笑笑走上前一看，原来是小松鼠蹦蹦，它惊讶地问道：“蹦蹦，你怎么会掉进枯井里了呀？”“我玩得太高兴，所以，一不小心，就掉进了这里。”蹦蹦哭着回答道。笑笑很自信地说道：“蹦蹦，你别哭，我自有办法把你给救上来。”“什么办法？”蹦蹦问道。“到时候你就明白了。”笑笑说完，就一溜烟地跑了。', '无', '1003', '2020-06-30 15:20:46.000000', '0', '五年级');
INSERT INTO `login_record` VALUES (34, '100006', '李雷', '今天早上，我来到教室一看，红豆已经长高很多了，第一名的大约4厘米，第二名的大约3厘米，第三名的大约1厘米，黑豆怎么样呢？我看了看，黑豆虽说有一粒有点儿发芽，但依旧奇臭无比，黑豆啊黑豆，你败局已定，红豆就要到终点了！', '今天早上，我来到教室一看，红豆已经长高很多了，第一名的大约4厘米，第二名的大约3厘米，第三名的大约1厘米。黑豆怎么样呢？我看了看，黑豆虽说有一粒有点儿发芽，但依旧奇臭无比。黑豆啊黑豆，你败局已定，红豆就要到终点了！', '无', '1001', '2020-06-26 16:25:01.000000', '0', '五年级');
INSERT INTO `login_record` VALUES (35, '100008', '王五', '如今，我们生活的时代，是一个信息迅速发展的时代，网络这个名词更是让大家再熟悉不过了，它一方面为我们带来了方便、快捷，另一方面也暴露出不小的问题。现在，我就跟大家讨论一下网络的利和弊。', '如今，我们生活的时代，是一个信息迅速发展的时代。“网络”这个名词更是让大家再熟悉不过了。它一方面为我们带来了方便、快捷，另一方面也暴露出不小的问题。现在，我就跟大家讨论一下网络的利和弊。', '无', '1003', '2020-06-26 15:32:13.000000', '0', '四年级');

-- ----------------------------
-- Table structure for login_user
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师序号',
  `tid` int(11) NOT NULL COMMENT '教师工号',
  `tname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师姓名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '注册邮箱',
  `sex` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师性别',
  `c_time` datetime(6) NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`, `tid`) USING BTREE,
  UNIQUE INDEX `name`(`tname`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES (1, 1001, 'test1', '123456', 'test1@qq.com', 'male', '2020-06-26 11:29:17.666638');
INSERT INTO `login_user` VALUES (2, 1002, 'test2', '123456', 'test2@qq.com', 'female', '2020-06-26 11:29:29.541669');
INSERT INTO `login_user` VALUES (3, 1003, 'test3', '123', 'test3@qq.com', 'male', '2020-06-29 16:22:59.107811');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '记录号',
  `sid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '学生学号',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `compos` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '学生原文',
  `revise` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '修改结果',
  `trevise` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '教师修改标志',
  `tid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '教师信息',
  `stime` timestamp(6) NULL DEFAULT NULL COMMENT '学生修改时间',
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '是否修改（已修改；未修改）',
  `sclass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '学生班级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '教师工号',
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `tnum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '教师手机',
  `pwd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '登录密码',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
