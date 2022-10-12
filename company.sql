DROP TABLE `works_with`;
/* 創建公司表格練習 */
SELECT * FROM `works_with`;
CREATE TABLE `employee`(
	`emp_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `birth_date` DATE,
    `sex` VARCHAR(1),
    `salary` INT,
    `branch_id` INT,
    `sup_id` INT     
);
CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,
    FOREIGN KEY(`manager_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL /* 當資料對應不到直接改成null，但如果這個屬性是主鍵的話是不能設成null的 */
);
ALTER TABLE `employee` ADD FOREIGN KEY(`branch_id`) REFERENCES `branch`(`branch_id`) ON DELETE SET NULL; /* 當資料對應不到直接連帶刪掉 */ 
ALTER TABLE `employee` ADD FOREIGN KEY(`sup_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL;

CREATE TABLE `client`(
	`client_id` INT PRIMARY KEY,
    `client_name` VARCHAR(20),
    `phone` VARCHAR(20)
);
CREATE TABLE `works_with`(
	`emp_id` INT,
    `client_id` INT,
    PRIMARY KEY(`emp_id`,`client_id`),
    `total_sales` INT,
    FOREIGN KEY(`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
    FOREIGN KEY(`client_id`) REFERENCES `client`(`client_id`)ON DELETE CASCADE
);

/* 新增公司資料 */
/* ! 如果先輸入 employee 資料，會因為Foreign Key的值是NULL而出錯
	 所以策略：先輸入Branch的資料，至於Foreign Key先設定成NULL，之後改回來。
*/
/* 新增部門資料 */
INSERT INTO `branch` VALUES(1,"研發",NULL);
INSERT INTO `branch` VALUES(2,"行政",NULL);
INSERT INTO `branch` VALUES(3,"資訊",NULL);
/* 新增元工資料 */
INSERT INTO `employee` VALUES(206,"小黃",'1998-10-08','F',50000,1,NULL);
INSERT INTO `employee` VALUES(207,"小綠",'1985-10-16','M',29000,2,206);
INSERT INTO `employee` VALUES(208,"小黑",'2000-12-19','M',35000,2,206);
INSERT INTO `employee` VALUES(209,"小白",'1997-01-12','F',39000,3,207);
INSERT INTO `employee` VALUES(210,"小蘭",'1925-11-10','F',84000,3,207);
/*把 NULL改回來 */
UPDATE `branch`
SET `manager_id`=206
WHERE `branch_id`=1;

UPDATE `branch`
SET `manager_id`=207
WHERE `branch_id` = 2;

UPDATE `branch`
SET `manager_id`=208
WHERE `branch_id`=3;

/* 新增銷售金額資料 */
INSERT INTO `works_with` VALUES(206,400,'70000');
INSERT INTO `works_with` VALUES(207,401,'24000');
INSERT INTO `works_with` VALUES(208,402,'9800');
INSERT INTO `works_with` VALUES(208,403,'24000');
INSERT INTO `works_with` VALUES(210,404,'87000');
/* 新增顧客資料 */
INSERT INTO `client` VALUES(400,'阿狗','254525335');
INSERT INTO `client` VALUES(401,'阿貓','253836335');
INSERT INTO `client` VALUES(402,'阿毛','253675335');
INSERT INTO `client` VALUES(403,'阿成','255675335');
INSERT INTO `client` VALUES(404,'阿星','253455335');


