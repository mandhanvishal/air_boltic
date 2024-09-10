{{ config(materialized='table') }}

SELECT
	t.trip_id,
	t.origin_city,
	t.destination_city,
	t.airplane_id,
	t.start_timestamp,
	t.end_timestamp,
	a.airplane_model,
	a.manufacturer,
	a.max_seats,
	a.max_weight,
	a.max_distance,
	a.engine_type

FROM {{ source('cdm', 'trip') }} as t

LEFT JOIN {{ source('cdm', 'dim_aeroplane') }} as a
	ON t.airplane_id = a.airplane_id
