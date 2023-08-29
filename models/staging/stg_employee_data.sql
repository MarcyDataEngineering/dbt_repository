with 
source as (
    select * from {{ source('employee_raw', 'employee_data') }}
),
renamed as (
    select
        exit_date,
        ademail,
        employee_classification_type,
        start_date,
        dob,
        pay_zone,
        job_function_description,
        marital_desc AS MaritalStatus,
        division,
        race_desc,
        supervisor,
        gender_code AS Gender,
        termination_type,
        performance_score AS PerformanceScore,
        first_name,
        location_code,
        title,
        department_type,
        employee_type,
        termination_description,
        employee_status,
        business_unit,
        state,
        last_name,
        current_employee_rating,
        emp_id
    from source
)
select * from renamed
