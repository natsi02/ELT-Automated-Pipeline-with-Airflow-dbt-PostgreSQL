import sys
from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta

sys.path.append('/opt/airflow/request-script')

def safe_main_callable():
    from load_data import main
    return main()

default_args = {
    'description': 'A DAG to orchestrate data',
    'start_date': datetime(2025, 8, 20),
    'catchup': False
}

dag = DAG(
    dag_id='online-sales-orchestrator',
    default_args=default_args,
    schedule=timedelta(weeks=1)
)

with dag:
    task1 = PythonOperator(
        task_id='ingest_data',
        python_callable=safe_main_callable
    )