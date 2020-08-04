#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a role for mlflow
echo "Creating database role: mlflow"
$POSTGRES <<-EOSQL
CREATE USER mlflow WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$MLFLOW_DB_PASSWORD';
EOSQL
