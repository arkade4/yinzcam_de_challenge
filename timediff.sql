SELECT MAX(session_start_date_time) FROM yinzdata4;
SELECT MAX(session_end_date_time) FROM yinzdata4;
SELECT session_start_date_time FROM yinzdata4 ORDER By session_start_date_time ASC LIMIT 10;
SELECT session_end_date_time FROM yinzdata4 ORDER By session_end_date_time DESC;

SELECT 
    DATEDIFF(MAX(session_end_date_time),
            MIN(session_start_date_time)) AS DateDiff,
    TIMEDIFF(MAX(session_end_date_time),
            MIN(session_start_date_time)) AS TimeDiff
FROM
    yinzdata4;


UPDATE yinzdata4
SET session_start_date_time = NULL
WHERE session_start_date_time = '1970-01-01 00:00:00';
