USE yinzcam_test;

SELECT TIMEDIFF(action_invisible_time,action_request_time) FROM yinzdata4 WHERE action_invisible_time != '1970-01-01 00:00:00' AND action_type_major = 'V';
/* What is the average dwell time per page view? */

SELECT action_resource_major, AVG(TIMEDIFF(action_invisible_time,action_request_time)) as AverageTimeInSeconds FROM yinzdata4
WHERE action_invisible_time != '1970-01-01 00:00:00' AND action_type_major = 'V'
GROUP BY action_resource_major;


