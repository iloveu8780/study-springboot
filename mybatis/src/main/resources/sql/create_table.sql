CREATE TABLE `user`(
	id					BIGINT	NOT NULL auto_increment COMMENT '用户 ID',
	user_name			VARCHAR(50)	COMMENT '用户名',
	user_password		VARCHAR(50)	COMMENT	'密码',
	user_email			VARCHAR(50)	COMMENT '邮箱',
	user_info			text	COMMENT '简介',
	head_img			BLOB	COMMENT	'头像',
	create_time			datetime	COMMENT	'创建时间',
	PRIMARY KEY(id)
);
ALTER TABLE `user` COMMENT '用户表';

CREATE TABLE role (
    id			BIGINT	NOT NULL auto_increment COMMENT '角色 ID',
    role_name   VARCHAR (50)    COMMENT '角色名',
    enabled     INT COMMENT '有效标志',
    create_by   BIGINT COMMENT '创建人',
    create_time DATETIME COMMENT '创建时间',
    PRIMARY KEY (id)
);
ALTER TABLE role COMMENT '角色表';

CREATE TABLE privilege (
    id              BIGINT  NOT NULL AUTO_INCREMENT COMMENT '权限ID',
    privilege_name  VARCHAR(50) COMMENT '权限名称',
    privilege_url   VARCHAR(200) COMMENT '权限URL',
    PRIMARY KEY (id)
);
ALTER TABLE privilege COMMENT '权限表';

CREATE TABLE user_role (
    user_id     BIGINT COMMENT '用户ID',
    role_id     BIGINT COMMENT '角色ID'
);
ALTER TABLE user_role COMMENT '用户角色关联表';

CREATE TABLE role_privilege (
    role_id         BIGINT COMMENT '角色ID',
    privilege_id    BIGINT COMMENT '权限ID'
);
ALTER TABLE role_privilege COMMENT '角色权限关联表';