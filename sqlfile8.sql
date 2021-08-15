SELECT DISTINCT(DATE(session_start_date_time)) FROM yinzdata4 ORDER BY DATE(session_start_date_time);

SELECT device_id FROM yinzdata4 WHERE (DATE(session_start_date_time)) = 2019-07-18;

SELECT session_start_date_time FROM yinzdata4 WHERE session_end_date_time = MAX(session_end_date_time);

SELECT action_type_major FROM yinzdata4 WHERE date(session_start_date_time) = 2019-07-28;