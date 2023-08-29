

SELECT e.*, t.*  
FROM {{ ref('stg_employee_data') }} e 
LEFT JOIN {{ ref('stg_training_and_development') }} t ON e.emp_id = t.employee_id