#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER mayur WITH PASSWORD '42795590';
    CREATE DATABASE employee_db;
    GRANT ALL PRIVILEGES ON DATABASE employee_db TO mayur;
EOSQL