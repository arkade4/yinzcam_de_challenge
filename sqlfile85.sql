USE yinzcam_test;
SELECT * FROM yinzdata4;

SELECT action_type_major, count(DISTINCT action_type_major)
FROM yinzdata4
WHERE action_type_major = 'AD_BAN_CLICK';

SELECT action_resource_major, count(action_resource_major)
FROM yinzdata4
WHERE action_type_major = 'AD_BAN_CLICK'
GROUP bY action_resource_major
ORDER BY 2 DESC
LIMIT 5;