#!/bin/bash
set -e # exit immediately if a command exits with a non-zero status.

POSTGRES="psql --username postgres"

# create database for superset
echo "Creating database: grafana"
$POSTGRES <<EOSQL
CREATE DATABASE grafana OWNER grafana;
EOSQL
