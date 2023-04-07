{{
    config(
        materialized='table',
        pre_hook="select 1 as col"
    )
}}

select 'gravy' as topping_name

union all 

select 'fudge' as topping_name

union all 

select 'whipped_cream' as topping_name

