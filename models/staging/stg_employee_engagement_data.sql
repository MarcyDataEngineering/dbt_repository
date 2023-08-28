with 

source as (

    select * from {{ source('employee_raw', 'employee_engagement_data') }}

),

renamed as (

    select
        _row,
        engagement_score,
        satisfaction_score,
        work_life_balance_score,
        employee_id,
        survey_date,
        _fivetran_synced

    from source

)

select * from renamed
