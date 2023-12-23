{{ config(materialized='view') }}

with stg_time_summary as (
    SELECT 
    time,
    Round(AVG(Cast(speed as numeric)),2) as "speed",
    Round(AVG(Cast(lat_acc as numeric)),2) as "lat_acc",
    Round(AVG(Cast(lon_acc as numeric)),2) as "lon_acc"
    from track_info
    GROUP BY "time"
)


SELECT * FROM stg_time_summary