{{ config(materialzied='view')}}

with top_speed as (select * from {{ref('stg_time_summary')}})

SELECT 
*
from top_speed
ORDER BY "lat_acc" ASC
LIMIT(100)