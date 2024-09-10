{{ config(materialized='table') }}

SELECT
	a.airplane_id,
	a.airplane_model,
	a.manufacturer,
	am.max_seats,
	am.max_weight,
	am.max_distance,
	am.engine_type

FROM {{ source('cdm', 'aeroplane') }} as a

LEFT JOIN {{ source('cdm', 'aeroplane_model') }} as am
	ON a.airplane_id = am.airplane_id
