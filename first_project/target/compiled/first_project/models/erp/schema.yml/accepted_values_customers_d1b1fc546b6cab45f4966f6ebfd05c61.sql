
    
    

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
    'PR','SC','RS','MG','RJ','BA','SP','AL','MA','RO'
)


