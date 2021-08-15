/* What is the average number of page views per session and per device?*/

SELECT session_id,device_id, AVG(c) FROM(
SELECT session_id,device_id,count(action_resource_major)c
FROM yinzdata4
WHERE action_invisible_time != '1970-01-01 00:00:00' AND action_type_major = 'V' 
GROUP BY session_id,device_id)a
GROUP BY session_id,device_id;







SELECT device_id,session_id,count(action_resource_major)c
FROM yinzdata4
WHERE action_invisible_time != '1970-01-01 00:00:00' AND action_type_major = 'V' AND device_id = '41FEE6D5-A4B0-4998-8FFC-2FC4FB1C6C0B'
GROUP BY device_id,session_id;

SELECT DISTINCT session_id,device_id
FROM yinzdata4
WHERE action_invisible_time != '1970-01-01 00:00:00' AND action_type_major = 'V' /*AND session_id = '00017FCD-7606-48EA-B629-7EE3DDC1AEAB';*/
GROUP BY session_id,device_id
HAVING COUNT(DISTINCT device_id)>1 ORDER BY 1;


