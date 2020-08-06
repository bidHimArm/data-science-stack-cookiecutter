#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a role for superset
echo "Creating database role: grafana"
$POSTGRES <<-EOSQL
CREATE USER superset WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$GRAFANA_DB_PASSWORD';
EOSQL
