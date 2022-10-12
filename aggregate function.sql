-- aggregate function 聚合函數
-- 取得員工人數
SELECT COUNT(*) FROM `employee`;
-- 取得所有出生於 1979-01-01 之後的女性員工人數
SELECT COUNT(*) FROM `employee` WHERE `birth_date` > "1970-01-01" AND `sex` = 'F';
-- 取得所有員工的平均薪水
SELECT AVG(`salary`) FROM `employee`;
-- 取得所有員工薪水的總和
SELECT SUM(`salary`) FROM `employee`;
-- 取得薪水最高地員工
SELECT MAX(`salary`) FROM `employee`;

-- wildards 萬用字元 ％代表多個字元 _代表一個字元
-- 取得電話號碼尾數是335的客戶
SELECT * FROM `client` WHERE `phone` LIKE '254%';
-- 取得性艾的客戶
SELECT * FROM `client` WHERE `client_name` LIKE '艾％';
-- 取得生日在12月的員工
SELECT * FROM `employee` WHERE `birth_date` LIKE '_____12%';
