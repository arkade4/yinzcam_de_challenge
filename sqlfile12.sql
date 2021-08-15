SELECT count(action_type_major)
FROM yinzdata4
WHERE action_type_major = 'PUSH_CLICK' AND DAYNAME(session_start_date_time) = 'Saturday'
AND TIME(session_start_date_time) BETWEEN '00:00:00' AND '06:00:00'
UNION ALL
SELECT count(action_type_major)
FROM yinzdata4
WHERE action_type_major = 'PUSH_CLICK' AND DAYNAME(session_start_date_time) = 'Saturday'
AND TIME(session_start_date_time) BETWEEN '06:00:00' AND '12:00:00'
UNION ALL
SELECT count(action_type_major)
FROM yinzdata4
WHERE action_type_major = 'PUSH_CLICK' AND DAYNAME(session_start_date_time) = 'Saturday'
AND TIME(session_start_date_time) BETWEEN '12:00:00' AND '18:00:00'
UNION ALL
SELECT count(action_type_major)
FROM yinzdata4
WHERE action_type_major = 'PUSH_CLICK' AND DAYNAME(session_start_date_time) = 'Saturday'
AND TIME(session_start_date_time) BETWEEN '18:00:00' AND '23:59:59';