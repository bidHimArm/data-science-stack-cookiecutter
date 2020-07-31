# Data Science Stack - Cookiecutter
Cookiecutter to launch an awesome Data Science toolstack in Docker.

# See it in action
[![asciicast](https://asciinema.org/a/CcZ9duIdP0pBfZWxw5Nt1tFVZ.png)](https://asciinema.org/a/CcZ9duIdP0pBfZWxw5Nt1tFVZ)

# Overall Architecture
## Stack architecture
![stack architecture](./architecture_1.png)

## Fucntional architecture
![fucntional architecture](./architecture_2.png)

# Used Variables
The following table provides an overview about parameters, that are queried by cookiecutter (and why)

| Name | Description | Injected in Services |
| --- | --- | --- | 
| **project_name** | *Name of your project* | - |
| **jupyter_password** | *Password to protect your Jupyter service* | Jupyter |
| **postgres_db_password** | *Password of standard postgres user* | Postgres |
| **shared_db_password** | *Password for shared database* | Airflow<br>Jupyter<br>Postgres |
| **grafana_db_password** | *Password for grafana database* | Postgres<br>Grafana |
| **grafana_admin_password** | *Password for grafana admin user* | Grafana |
| **minio_access_key** | *Access key for Minio store* | Airflow<br>FlaskAPI<br>Jupyter<br>Minio |
| **minio_secret_key** | *Secret key for Minio store* | Airflow<br>FlaskAPI<br>Jupyter<br>Minio |
| **pgadmin_default_email** | *Default user email for PgAdmin4* | Postgres |
| **pgadmin_default_password** | *Default password for PgAdmin4* | Postgres |
