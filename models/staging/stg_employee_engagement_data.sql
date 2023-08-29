with 

source as (

    select * from {{ source('employee_raw', 'employee_engagement_data') }}

),

renamed as (

    select
        engagement_score,
        satisfaction_score,
        work_life_balance_score,
        employee_id AS EmployeeId,
        survey_date

    from source

)

select * from renamed
