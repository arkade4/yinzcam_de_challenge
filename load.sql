USE yinzcam_test;

LOAD DATA LOCAL INFILE 'C:/Users/arkad/OneDrive/Desktop/Assignments/yinz_data.csv' 
INTO TABLE yinzdata
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * FROM yinzdata4;




SELECT action_type_major, count(*) as Count
FROM yinz
GROUP BY action_type_major;