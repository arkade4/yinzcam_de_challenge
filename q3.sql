USE yinzcam_test;
SELECT * FROM yinzdata4;

SELECT session_start_date_time,count(action_type_major) as c FROM yinzdata4
WHERE session_start_date_time BETWEEN '2019-07-12 00:00:00'AND '2019-07-12 11:59:59'
GROUP BY session_start_date_time ORDER BY 2 DESC;





SELECT DATE(session_start_date_time) as Day, AVG(c)as Average, MIN(c) as Minimum, MAX(c) as Maximum 
FROM(
SELECT session_start_date_time,count(action_type_major) as c 
FROM yinzdata4 
WHERE session_start_date_time BETWEEN CONCAT(DATE(session_start_date_time),' 00:00:00') AND CONCAT(DATE(session_start_date_time),' 23:59:59')
GROUP BY session_start_date_time
) a
GROUP BY DATE(session_start_date_time);






SELECT DISTINCT CONCAT(DATE(session_start_date_time),' 00:00:00')f,CONCAT(DATE(session_start_date_time),' 11:59:59')t FROM yinzdata4;


What is the average, minimum, and maximum number of action records on each day? A day should be
considered midnight to midnight in EDT (Eastern Daylight Time, UTC-4)