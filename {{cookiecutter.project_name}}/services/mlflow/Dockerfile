FROM python:3.7.0
USER root

RUN pip install mlflow==1.7.2 && \
    pip install boto3==1.9.240

EXPOSE 5000

CMD mlflow server \
    --backend-store-uri postgresql://mlflow:${MLFLOW_DB_PASSWORD}@postgres:5432/mlflow \
    --default-artifact-root s3://mlflow/artifacts \
    --host 0.0.0.0