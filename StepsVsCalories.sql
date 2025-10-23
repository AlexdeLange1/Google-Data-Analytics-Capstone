SELECT Id,
  ActivityDate,
  AVG(TotalSteps) AS Average_Steps,
  AVG(Calories) AS Average_Calories

FROM `fast-circle-473617-s9.Smart_Device_Data.Clean_Activity_Date` 

GROUP BY Id, ActivityDate
