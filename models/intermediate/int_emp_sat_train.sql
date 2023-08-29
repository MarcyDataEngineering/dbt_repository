SELECT t.*,ee.*, e.*
FROM {{ ref('stg_employee_engagement_data') }} ee
LEFT JOIN {{ ref('stg_training_and_development') }} t ON t.employee_id = ee.EmployeeId
LEFT JOIN {{ ref('stg_employee_data') }} e on e.emp_id = ee.EmployeeId