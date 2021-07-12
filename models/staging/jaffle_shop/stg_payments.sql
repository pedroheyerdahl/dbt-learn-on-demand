select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    
-- amount is stored in cents, converting it to dolars
    amount / 100 as amount,
    created as created_at

from dbt-tutorial.stripe.payment
