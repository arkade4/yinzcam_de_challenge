SELECT COUNT(distinct device_id)
FROM yinzdata4
WHERE date(session_start_date_time) BETWEEN "2019-07-11" AND "2019-07-17"
AND
action_type_major = 'V';

SELECT COUNT(distinct device_id)
FROM yinzdata4
WHERE date(session_start_date_time) BETWEEN "2019-07-04" AND "2019-07-10"
AND
action_type_major = 'V';
