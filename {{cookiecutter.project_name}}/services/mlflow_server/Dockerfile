FROM python:3.7.0
USER root

RUN pip install --no-cache-dir --proxy=${http_proxy}\
    psycopg2-binary \
    mlflow \
    boto3

EXPOSE 5000

CMD mlflow server \
    --backend-store-uri postgresql://mlflow:${MLFLOW_DB_PASSWORD}@postgres:5432/mlflow \
    --default-artifact-root s3://mlflow/artifacts \
    --host 0.0.0.0