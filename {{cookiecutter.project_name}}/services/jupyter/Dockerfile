FROM jupyter/all-spark-notebook

USER root

RUN pip install --proxy=${http_proxy}\
    psycopg2-binary\
    minio

RUN pip install jupyter_contrib_nbextensions\
    && jupyter contrib nbextension install 