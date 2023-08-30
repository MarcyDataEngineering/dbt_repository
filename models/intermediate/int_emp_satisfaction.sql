SELECT a.*,k.* FROM {{ ref('stg_employee_data') }} k
LEFT JOIN {{ref('stg_employee_engagement_data')}} a on a.EmployeeId = k.emp_id

