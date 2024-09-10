{{ config(materialized='table') }}

SELECT
	o.order_id,
	o.customer_id,
	o.trip_id,
	o.price_eur,
	o.seat_on,
	o.status,
	c.customer_name,
	c.customer_email,
	c.phone_number,
	c.customer_group_id,
	c.customer_group_name,
	c.customer_group_type,
	c.customer_group_registry_name,
	t.origin_city,
	t.destination_city,
	t.airplane_id,
	t.start_timestamp,
	t.end_timestamp

FROM {{ source('cdm', 'order') }} as o

LEFT JOIN {{ ref('dim_customer') }} as c
	ON o.customer_id = c.customer_id

LEFT JOIN {{ ref('fct_trip') }} as c
	ON o.trip_id = t.trip_id
