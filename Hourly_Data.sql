SELECT
    t1.Id,
    t1.ActivityHour AS clean_hour,
    SUM(t1.Calories) AS Total_Calories,
    SUM(t2.StepTotal) AS Total_Steps
FROM
    `fast-circle-473617-s9.Smart_Device_Data.H_Calories` AS t1
INNER JOIN
    `fast-circle-473617-s9.Smart_Device_Data.Clean_Hourly_Steps` AS t2
    ON t2.ID = t1.Id AND t2.ActivityHour = t1.ActivityHour 
GROUP BY
    t1.ID,
    t1.ActivityHour
ORDER BY
    t1.ActivityHour,
    t1.ID;