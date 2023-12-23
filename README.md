# Data Engineering: Data warehouse tech stack with Postgres, DBT, and Airflow

You and your colleagues have joined to create an AI startup that deploys sensors to businesses, collects data from all activities in a business - people’s interaction, traffic flows, smart appliances installed in a company. Your startup helps organizations obtain critical intelligence based on public and private data they collect and organize. 

A city traffic department wants to collect traffic data using swarm UAVs (drones) from a number of locations in the city and use the data collected for improving traffic flow in the city and for a number of other undisclosed projects. Your startup is responsible for creating a scalable data warehouse that will host the vehicle trajectory data extracted by analysing footage taken by swarm drones and static roadside cameras.

The data warehouse should take into account future needs, organise data such that a number of downstream projects query the data efficiently. You should use the Extract Load Transform (ELT) framework using DBT.  Unlike the Extract, Transform, Load (ETL), the ELT framework helps analytic engineers in the city traffic department setup transformation workflows on a need basis.  

___

This project tried to implement the following core tasks
- A “data warehouse” (PostgresQL)
- An orchestration service (Airflow)
- An ELT tool (dbt)
___

# Deployment

> To deploy this project <br>`docker and docker-compose are required`

## Redash Setup

First cd to redash directory 
```
cd redash
```
## Create an environment file here
`.env` Shoud contain the following
```bash
REDASH_HOST=http://localhost/redash
PYTHONUNBUFFERED=0
REDASH_LOG_LEVEL=INFO
REDASH_REDIS_URL=redis://redis:6379/0
POSTGRES_PASSWORD=password
REDASH_COOKIE_SECRET=redash-selfhosted
REDASH_SECRET_KEY=redash-selfhosted
REDASH_DATABASE_URL={postgresql+psycopg2://username:password@host/dbname}
```
Then run 

```bash
docker-compose run --rm server create_db 
docker-compose up -d

# your redash dashboard should be running on port 5000
```