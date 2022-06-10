
    
    

with all_values as (

    select
        state as value_field,
        count(*) as n_records

    from "erp_oltp"."public"."customers"
    group by state

)

select *
from all_values
where value_field not in (
    'SP','GO','AL','PA','RO','MT','RS','SC','PR','BA','RJ','DF'
)


