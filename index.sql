CREATE DATABASE `sql_tutorial`;/* 創建資料庫 */
SHOW DATABASES;/* 展示目前有的資料庫 */
USE `sql_tutorial`;/* 使用所選資料庫 */
DROP DATABASE `sql_tutorial`;/* 刪除所選資料庫 */

/* 創建資料表（表格） */
CREATE TABLE `student`(
	`student_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `major` VARCHAR(20),  
    `score` INT
);
/* 檢視資料庫/資料表 */
DESCRIBE `sql_tutorial`; 
/* 刪除資料庫/資料表 */
DROP TABLE `student`;

ALTER TABLE `student` ADD gpa DECIMAL(3,2);/* 修改資料表（此行是新增gpa這個變數） */
ALTER TABLE `student` DROP COLUMN gpa;/* 修改資料表（刪除gpa這個變數） */

INSERT INTO `student` VALUES(3,'+*','英語',50);/* 插入資料 */
INSERT INTO `student`(`name`,`major`,`student_id`) VALUES('小黑','英語',2);/* 也是插入資料（但是可以調換key-value的順序） */

SELECT * FROM `student`; /* 查詢資料 *（代表所有欄位） */

SET SQL_SAFE_UPDATES = 0;/* 先讓SQL停止自動更新 */
UPDATE `student` 
SET `major`="英語文學"
WHERE `major`="英語";/* 把資料表裡的英語換成英語文學 */

DELETE FROM `student`/* 刪除所選資料表裡的所有資料 */
WHERE `student_id`= 1;/* 條件判斷 */

/* 如何搜尋資料 */
SELECT `name`,`major` FROM `student`; /* 查詢資料 */ 
SELECT * FROM `student` ORDER BY `score` ASC; /* 讓分數依據 score 有排序（小到大） */
/* 如果要由高到低可以加DESC : SELECT * FROM `student`ORDER BY `score` DESC; */
SELECT * FROM `student` LIMIT 3; /* 查詢資料(回傳前3筆資料就好） */ 
SELECT * FROM `student` ORDER BY `score` ASC LIMIT 3; /* 查詢資料(回傳前三低的資料) */
SELECT * FROM `student` WHERE `major` IN('歷史','地理','生物'); /* 回傳 major=歷史地理生物的資料 * /



