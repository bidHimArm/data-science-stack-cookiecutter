FROM python:3.7.0

WORKDIR /usr/src/app

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
  torch torchvision \
  Pillow

RUN pip install --no-cache-dir --no-deps --proxy=${http_proxy}\
  pandas

EXPOSE 8000

ENTRYPOINT [ "python" ] 

# Run app.py when the container launches
CMD [ "app.py","run","--host","0.0.0.0"] 
