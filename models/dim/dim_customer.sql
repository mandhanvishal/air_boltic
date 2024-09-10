{{ config(materialized='table') }}

SELECT
	c.customer_id,
	c.name as customer_name,
	c.email as customer_email,
	c.phone_number,
	c.customer_group_id,
	cg.name as customer_group_name,
	cg.type as customer_group_type,
	cg.registry_name as customer_group_registry_name

FROM {{ source('cdm', 'customer') }} as c

LEFT JOIN {{ source('cdm', 'customer_group') }} as cg
	ON c.customer_group_id = cg.id
