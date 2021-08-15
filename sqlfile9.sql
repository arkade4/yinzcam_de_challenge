SELECT t as Date, dayname(t) as Day, c as Count FROM 
(SELECT DATE(session_start_date_time)t, count(DATE(session_start_date_time))c
FROM yinzdata4
WHERE action_type_major = 'AD_BAN_CLICK'
GROUP bY DATE(session_start_date_time)
ORDER BY 2 DESC
LIMIT 5)x;