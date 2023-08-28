with 

source as (

    select * from {{ source('employee_raw', 'employee_data') }}

),

renamed as (

    select
        _row,
        exit_date,
        ademail,
        employee_classification_type,
        start_date,
        dob,
        pay_zone,
        job_function_description,
        marital_desc,
        division,
        race_desc,
        supervisor,
        gender_code,
        termination_type,
        performance_score,
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
        emp_id,
        _fivetran_synced

    from source

)

select * from renamed
