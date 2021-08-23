create database HCPurchase

# 采购项目表
create table hc_pj(
	pj_id int(4) primary key auto_increment comment '项目ID',
	pj_name varchar(64) not null comment '项目名称',
	pj_type varchar(64) not null comment '采购项目类型',
	pj_purchase_name varchar(64) not null comment '采购产品名称',
	pj_price double(16,5) not null comment '商品价格(单价)',
	pj_count int(5) not null comment '商品数量',
	pj_total_price double(16,5) not null comment '总价格(总价)',
	pj_create_date timestamp not null comment '采购项目创建日期',
	pj_level int(3) not null comment '项目级别-关联字典表表字段level_key',
	pj_status int(3) not null comment '项目处理状态-关联字典表字段level_status_key',
	pj_end_date timestamp comment '项目结束日期',
	pj_once_reason varchar(128) comment '初审打回原因',
	pj_once_date timestamp comment '采购项目初审日期',
	pj_last_reason varchar(128) comment '终审打回原因',
	pj_last_date timestamp comment '采购项目终审日期',
	pj_update_date timestamp comment '采购项目最后修改日期'
)

insert into hc_pj (pj_id,pj_name,pj_type,pj_purchase_name,pj_price,pj_count,pj_total_price,pj_create_date,pj_level,pj_status,pj_end_date,pj_update_date,pj_number,pj_remarks,status) 
values(22,'蔬菜采购','蔬菜','超级大白菜',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(23,'空调采购计划','家电','格力空调',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(24,'西瓜采购计划','水果','大西瓜',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(25,'番茄采购计划','蔬菜','西红柿',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(26,'哈密瓜采购计划','水果','哈密瓜',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(27,'电脑采购计划','数码电子','ROG玩家国度',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(28,'手机采购计划','数码电子','Apple手机',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(29,'电池采购计划','能源储蓄','锂电池',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(30,'显示器采购计划','数码电子','显示器',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(31,'键盘采购计划','数码电子','键盘',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(32,'键帽采购计划','数码电子','键帽',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(33,'相机采购计划','数码电子','摄像头',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(34,'香蕉采购计划','水果','香蕉',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(35,'软件续订计划','软件','office',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(36,'风扇采购计划','电子设备','散热风扇',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(37,'杀毒软件续订计划','软件','迈克菲',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1),
(38,'光纤采购计划','光缆','光缆',2100.00,100,210000.00,'2021-06-01',1,1,'2021-10-01','2021-06-01','1433223','...........',1)

# 采购项目字典表
create table hc_level(
	level_id int(3) primary key auto_increment comment '级别主键',
	level_type int(2) not null comment '项目类型',
	level_key int(2) not null comment '级别键',
	level_value varchar(12) not null comment '级别名称',
	level_status_key int(2) not null comment '状态键',
	level_status_value varchar(12) not null comment '状态名称',
	level_date timestamp not null comment '字典表最后修改日期'
)

# 华昌采购职工表
create table hc_employee(
	employee_id int(3) primary key auto_increment comment '职工表主键',
	employee_name varchar(12) not null comment '职工姓名',
	employee_sex int(1) not null comment '职工性别(1是男、0是女)',
	employee_phone varchar(11) not null comment '职工手机号',
	employee_create_date timestamp not null comment '职工入职日期',
	employee_email varchar(64) comment '职工邮箱地址',
	employee_qq varchar(12) comment '职工QQ',
	employee_wechat varchar(64) comment '职工微信',
	employee_call varchar(32) comment '职工称呼',
	employee_address varchar(128) comment '职工住址',
	employee_job varchar(12) not null comment '职工类型'
)

# 华昌采购权限管理表
create table hc_authority(
	authority_id int(2) primary key auto_increment comment '权限表主键',
	authority_name varchar(12) not null comment '权限名称',
	authority_url varchar(128) not null comment '权限管理范围',
	authority_url_name varchar(64) not null comment '权限管理范围名称',
	authority_type int(2) not null comment '权限范围类型',
	parent_id int(2) comment '自连接ID'
)

# 角色和权限的关联表
create table hc_au(
	au_id int(3) primary key auto_increment comment '用户和权限关联表的主键',
	au_role_id int(3) not null comment '角色表主键',
	au_authority_id int(3) not null comment '权限表主键'
)

# 用户和角色关联表
create table hc_ur(
	ur_id int(2) primary key auto_increment comment '用户和角色的关联表的主键',
	ur_user_id int(2) comment '用户表主键',
	ur_role_id int(2) comment '角色表主键'
)

# 角色表
create table hc_role(
	role_id int(2) primary key auto_increment comment '角色表主键',
	role_name varchar(10) not null comment '角色名称',
	role_authority int(3) not null comment '角色权限范围'
)

# 华昌采购用户表
create table hc_user(
	user_id int(3) primary key auto_increment comment '用户ID',
	user_name varchar(12) not null comment '用户姓名',
	user_age int(3) not null comment '用户年龄',
	user_sex int(2) not null comment '用户性别(1是男、0是女)',
	user_create_date TIMESTAMP not null comment '用户注册日期',
	user_birthday date comment '用户生日',
	user_address varchar(128) comment '用户住址',
	user_type int(2) not null comment '用户类型 关联外表字段',
	user_employee_id int(4) not null comment '职工ID(关联职工表主键)', 
	user_unum varchar(16) not null comment '用户账户',
	user_password varchar(16) not null comment '用户密码'
)

# 运营人员表
create table hc_operator(
	operator_id int(2) primary key auto_increment comment '供应商主键',
	operator_name varchar(12) not null comment '供应商名称',
	operator_principal varchar(12) not null comment '供应商负责人姓名',
	operator_phone varchar(11) not null comment '供应商电话',
	operator_adress varchar(128) not null comment '供应商地址',
	operator_status int(2) not null comment '供应商状态表'
)

#产品表
create table hc_product(
	product_id int(2) primary key auto_increment comment '产品主键',
	product_name varchar(64) comment '产品名称',
	product_type varchar(64) comment '产品类型',
	product_price double(16,4) comment '产品价格',
	product_date date comment '产品生产日期',
	product_shelf_date int(10) comment '产品保质期',
	product_time_unit varchar(7) comment '保质期的时间单位',
	product_operator_id varchar(4) comment '供应商产品id',
	product_status int(3) comment '产品状态'
)

select
			pj_id,pj_name,pj_type,pj_purchase_name,pj_price,pj_count,pj_total_price,
			pj_create_date,pj_level,pj_status,pj_end_date,pj_once_reason,pj_once_date,
			pj_last_reason,pj_last_date,pj_update_date,pj_number,pj_remarks
		from
			hc_pj
			
select count(pj_id) from hc_pj