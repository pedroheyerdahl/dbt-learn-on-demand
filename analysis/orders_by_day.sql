with orders as (

    select * from {{ ref('stg_orders') }}
),

daily as (

    select
        order_date,
        count(*) order_num
    from orders
    group by 1
),

compared as (

    select *,
        lag(order_num) over (order by order_date) as previous_day_orders
)

select * from compared