# #!/usr/bin/env bash
# set -e

# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#     CREATE USER mayur WITH PASSWORD '42795590';
#     CREATE DATABASE employee_db;
#     GRANT ALL PRIVILEGES ON DATABASE employee_db TO mayur;
# EOSQL



#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER mayur WITH PASSWORD '42795590';
    CREATE DATABASE employee_db;
    GRANT ALL PRIVILEGES ON DATABASE employee_db TO mayur;
    
    -- Connect to the new database and grant schema permissions
    \c employee_db;
    GRANT ALL ON SCHEMA public TO mayur;
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO mayur;
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO mayur;
    
    -- Set default privileges for future objects
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO mayur;
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO mayur;
EOSQL