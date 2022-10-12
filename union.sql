-- union 聯集
-- 員工名子 union 客戶名子
SELECT `name` FROM `employee` UNION SELECT `client_name` FROM `client`;
SELECT `name` FROM `employee` UNION SELECT `client_name` FROM `client` UNION SELECT `branch_name` FROM `branch`;
-- 員工id + 員工名子 union 客戶id + 客戶名子
SELECT `emp_id` AS `total_id`,`name` AS `total_name` FROM `employee` UNION SELECT `client_id`,`client_name` FROM `client`;
-- 員工薪水 union 銷售薪水
SELECT `salary` FROM `employee` UNION SELECT `total_sales` FROM `works_with`; 