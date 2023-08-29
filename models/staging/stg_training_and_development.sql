with 

source as (

    select * from {{ source('employee_raw', 'training_and_development') }}

),

renamed as (

    select
        training_outcome,
        training_duration_days_,
        training_date,
        training_cost,
        employee_id,
        trainer,
        training_program_name,
        training_type,
        location

    from source

)

select * from renamed
