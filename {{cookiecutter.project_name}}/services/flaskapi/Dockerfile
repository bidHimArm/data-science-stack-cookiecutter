FROM python:3.7.0

WORKDIR /usr/src/app

RUN apk add --update \
    postgresql-dev \
    build-base \
    openblas-dev \
    gfortran \
  && rm -rf /var/cache/apk/*

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
  && pip install cython \
  && apk del .build-deps

RUN pip install --no-cache-dir --proxy=${http_proxy}\
  numpy===1.14.3

RUN pip install --no-cache-dir --proxy=${http_proxy}\
  flask \
  gunicorn \
  dill \
  minio \
  psycopg2-binary \
  scipy \
  scikit-learn \
  torch torchvision

RUN pip install --no-cache-dir --no-deps --proxy=${http_proxy}\
  pandas


EXPOSE 8000
