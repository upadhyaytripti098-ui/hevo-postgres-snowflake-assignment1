-- Create user for Hevo ingestion
CREATE ROLE hevo_user WITH LOGIN PASSWORD 'hevo_pass';

-- Grant database access
GRANT CONNECT ON DATABASE hevo_db TO hevo_user;
