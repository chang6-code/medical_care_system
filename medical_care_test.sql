USE medical_care_system;

-- 查看各表数量
SELECT 'users',COUNT(*) FROM users
UNION ALL
SELECT 'nurses',COUNT(*) FROM nurses
UNION ALL
SELECT 'orders',COUNT(*) FROM orders
UNION ALL
SELECT 'chats',COUNT(*) FROM chats
UNION ALL
SELECT 'favorites',COUNT(*) FROM favorites;

-- 查询订单
SELECT * FROM orders LIMIT 20;

-- 订单状态统计
SELECT status,COUNT(*) FROM orders GROUP BY status;