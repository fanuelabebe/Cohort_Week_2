{{ config(materialized='view') }}

with top_avg_speed_vehicles as (
    SELECT *
    from "DWH".track_info
    ORDER BY avg_speed DESC
    LIMIT 100
)


SELECT * FROM top_avg_speed_vehicles