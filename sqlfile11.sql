SELECT action_resource_major, count(action_resource_major) from yinzdata4
WHERE DAYNAME(session_start_date_time) = 'Saturday' AND action_type_major = 'AD_BAN_CLICK'
GROUP BY action_resource_major
ORDER BY 2 DESC
LIMIT 5;