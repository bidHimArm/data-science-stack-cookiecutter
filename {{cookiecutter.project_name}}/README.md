# {{cookiecutter.project_name}}

## How to run
```
# 1 - build jupyter
docker-compose build jupyter

# 2 - build apistar
docker-compose build apistar

# 3 - launch the stack
docker-compose up -d
```

## Service - Port Mappings
| Service | Port |
| --- | --- |
| Airflow | 8080 |
| Apistar | 8000 |
| Jupyter | 8888 |
| Minio | 9000 |
| Portainer | 9090 |
| Postgres | 5432 |
| Superset | 8088 |

***
Autogenerated with <3 via [data-science-stack](https://github.com/jgoerner/data-science-stack-cookiecutter) and [cookiecutter](https://github.com/audreyr/cookiecutter)