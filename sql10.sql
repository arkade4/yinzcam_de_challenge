USE yinzcam_test;

SELECT session_start_date_time, session_end_date_time, second(session_start_date_time),
Second(session_end_date_time), absv
(
SELECT ABS(second(session_end_date_time) - Second(session_start_date_time)) as absv FROM yinzdata4
)
FROM yinzdata4
WHERE session_start_date_time < session_end_date_time AND action_type_major = 'PUSH_CLICK'
GROUP BY session_start_date_time;


SELECT /*device_id, session_start_date_time, session_end_date_time,*/ (TIMEDIFF(session_end_date_time, session_start_date_time))
FROM yinzdata4
WHERE session_start_date_time < session_end_date_time AND action_type_major = 'PUSH_CLICK'
ORDER BY 1 DESC;

SELECT * FROM yinzdata4;


SELECT action_type_minor, count(action_type_minor)
FROM yinzdata4
WHERE action_type_major = 'PUSH_CLICK'
GROUP BY action_type_minor
ORDER BY 2 DESC;

GROUP BY device_id,session_end_date_time, session_start_date_time
ORDER BY 4 DESC;