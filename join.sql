-- join 連接


-- 取的所有部門經理的名子
SELECT * FROM `employee` JOIN `branch` ON `emp_id` = `manager_id`;
SELECT `emp_id`,`name`,`branch_name` FROM `employee` JOIN `branch` ON `emp_id` = `manager_id`;