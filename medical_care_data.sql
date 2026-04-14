USE medical_care_system;

-- 生成测试用户
INSERT INTO users (username, password, name, phone)
VALUES 
('user00001','123456','测试用户1','1380000001'),
('user00002','123456','测试用户2','1380000002');

-- 生成护工
INSERT INTO nurses (name, age, experience, rating)
VALUES 
('护工001',30,5,4.8),
('护工002',28,3,4.5);

-- 生成10000条订单
INSERT INTO orders (user_id, nurse_id, patient_name, patient_age, patient_status, status)
SELECT 
    1,1,CONCAT('患者',FLOOR(RAND()*99999)),FLOOR(50+RAND()*40),'高血压','待确认'
FROM
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t1,
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t2,
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t3,
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t4,
    (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t5
LIMIT 10000;