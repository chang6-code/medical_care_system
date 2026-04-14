CREATE DATABASE IF NOT EXISTS medical_care_system CHARACTER SET utf8mb4;
USE medical_care_system;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '用户ID',
    username VARCHAR(50) UNIQUE NOT NULL COMMENT '用户名',
    password VARCHAR(100) NOT NULL COMMENT '密码',
    name VARCHAR(50) NOT NULL COMMENT '姓名',
    phone VARCHAR(20) NOT NULL COMMENT '手机号',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP
) COMMENT '用户表';

CREATE TABLE nurses (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '护工ID',
    name VARCHAR(50) NOT NULL COMMENT '护工姓名',
    age INT NOT NULL COMMENT '年龄',
    experience INT NOT NULL COMMENT '经验',
    rating DECIMAL(3,2) DEFAULT 0 COMMENT '评分',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP
) COMMENT '护工表';

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '订单ID',
    user_id INT NOT NULL COMMENT '用户ID',
    nurse_id INT NOT NULL COMMENT '护工ID',
    status VARCHAR(20) NOT NULL DEFAULT '待确认' COMMENT '状态',
    patient_name VARCHAR(50) NOT NULL COMMENT '患者姓名',
    patient_age INT NOT NULL COMMENT '患者年龄',
    patient_status TEXT COMMENT '患者情况',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT '订单表';

CREATE TABLE chats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    nurse_id INT NOT NULL,
    content TEXT NOT NULL,
    send_time DATETIME DEFAULT CURRENT_TIMESTAMP
) COMMENT '聊天表';

CREATE TABLE favorites (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    nurse_id INT NOT NULL,
    UNIQUE KEY (user_id, nurse_id)
) COMMENT '收藏表';

-- 索引优化
ALTER TABLE users ADD INDEX idx_username(username);
ALTER TABLE orders ADD INDEX idx_user_id(user_id);
ALTER TABLE orders ADD INDEX idx_nurse_id(nurse_id);
ALTER TABLE orders ADD INDEX idx_status(status);