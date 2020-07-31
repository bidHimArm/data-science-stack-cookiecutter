FROM python:3.7.0

USER root

RUN pip install mlflow==1.0.0

RUN mkdir /mlflow/

CMD mlflow server \
    --backend-store-uri postgresql://admin:secret@postgres:5432/mlflow \
    --default-artifact-root /mlflow \
    --host 0.0.0.0