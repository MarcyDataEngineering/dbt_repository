
SELECT t.*,ee.* 
FROM {{ ref('stg_employee_engagement_data') }} ee
LEFT JOIN {{ ref('stg_training_and_development') }} t ON t.employee_id = ee.EmployeeId