SELECT t as Day, c as Count FROM 
(SELECT DAYNAME(session_start_date_time)t, count(DISTINCT DAYNAME(session_start_date_time))c
FROM yinzdata4
WHERE action_type_major = 'AD_BAN_CLICK'
GROUP BY DAYNAME(session_start_date_time)
ORDER BY 2 DESC
LIMIT 5)x;

SELECT MAX(session_end_date_time) FROM yinzdata4;

SELECT action_type_major, session_start_date_time
from yinzdata4
WHERE session_start_date_time > '2019-07-22 00:00:00';