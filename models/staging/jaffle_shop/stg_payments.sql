select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
-- amount is stored in cents, converting it to dolars
    {{ cents_to_dolars('amount') }} as amount,
    created as created_at

from {{source('stripe', 'payment')}} 

__