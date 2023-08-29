with 

source as (

    select * from {{ source('employee_raw', 'recruitment_data') }}

),

renamed as (

    select
        _row,
        status,
        desired_salary,
        email,
        address,
        years_of_experience,
        first_name,
        education_level,
        gender,
        city,
        job_title,
        applicant_id,
        zip_code,
        state,
        country,
        date_of_birth,
        application_date,
        last_name,
        phone_number,
        _fivetran_synced

    from source

)

select * from renamed
