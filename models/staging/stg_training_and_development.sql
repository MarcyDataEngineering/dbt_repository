with 

source as (

    select * from {{ source('employee_raw', 'training_and_development') }}

),

renamed as (

    select
        _row,
        training_outcome,
        training_duration_days_,
        training_date,
        training_cost,
        employee_id,
        trainer,
        training_program_name,
        training_type,
        location,
        _fivetran_synced

    from source

)

select * from renamed
