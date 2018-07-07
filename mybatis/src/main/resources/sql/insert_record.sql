-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', '用户管理', '/users');
INSERT INTO `privilege` VALUES ('2', '角色管理', '/roles');
INSERT INTO `privilege` VALUES ('3', '系统日志', '/logs');
INSERT INTO `privilege` VALUES ('4', '人员维护', '/persons');
INSERT INTO `privilege` VALUES ('5', '单位维护', '/companies');

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '1', '1', '2016-04-01 17:02:14');
INSERT INTO `role` VALUES ('2', '普通用户', '1', '1', '2016-04-01 17:02:34');


-- Records of role_privilege
INSERT INTO `role_privilege` VALUES ('1', '1');
INSERT INTO `role_privilege` VALUES ('1', '3');
INSERT INTO `role_privilege` VALUES ('1', '2');
INSERT INTO `role_privilege` VALUES ('2', '4');
INSERT INTO `role_privilege` VALUES ('2', '5');

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', 'admin@mybatis.tk', '管理员用户', 0x1231231230, '2016-06-07 01:11:12');
INSERT INTO `user` VALUES ('1001', 'test', '123456', 'test@mybatis.tk', '测试用户', 0x1231231230, '2016-06-07 00:00:00');

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('1001', '2');