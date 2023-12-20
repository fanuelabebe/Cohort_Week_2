from datetime import datetime, timedelta
from airflow import DAG
from airflow.providers.postgres.operators.postgres import PostgresOperator

default_args = {
    'owner':'fanuel',
    'retries':'5',
    'retry_delay':timedelta(minutes = 5)
}

def import_data_from_csv:


with DAG(
    dag_id='dag_with_postgres_operator',
    default_args = default_args,
    start_date=datetime(2023,12,20),
    schedule_interval = '0 0 * * *'
)as dag:
    task1 = PostgresOperator(
        task_id = 'create_postgres_table',
        postgres_conn_id= 'local_postgres',
        sql = """"
        create table iif not exists dag_runs (
            dt date,
            dag_id character varying,
            primary key (dt,dag_id)
        )
        """
    )
    task1