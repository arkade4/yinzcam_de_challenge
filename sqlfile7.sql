USE yinzcam_test;
SELECT * FROM yinzdata4;

SELECT hardware_manufacturer as Company, count(hardware_manufacturer) as Count
FROM yinzdata4
GROUP BY Company;

