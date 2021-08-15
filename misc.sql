USE yinzcam_test;

SELECT * FROM yinzdata4;

UPDATE `yinzcam_test`.`yinzdata4`;


SELECT action_type_major, count(*) as Count
FROM yinzdata4
GROUP BY action_type_major;

ALTER TABLE yinzdata4
MODIFY session_start_date_time DATETIME;

ALTER TABLE yinzdata4
MODIFY action_request_time DATETIME;

ALTER TABLE yinzdata4
MODIFY action_invisible_time DATETIME;

SHOW COLUMNS FROM yinzdata4 FROM yinzcam_test;

select column_name from yinzcam_test.yinzdata4 where table_schema = 'yinzcam_test' and table_name = 'yinzdata4';


ALTER TABLE yinzdata4
MODIFY session_end_date_time DATETIME;

SELECT * FROM yinzdata4;