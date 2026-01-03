-- Enable logical replication
ALTER SYSTEM SET wal_level = logical;
ALTER SYSTEM SET max_replication_slots = 5;
ALTER SYSTEM SET max_wal_senders = 5;

-- Create Hevo user
CREATE ROLE hevo_user WITH LOGIN PASSWORD '*****';

-- Grant permissions
GRANT CONNECT ON DATABASE hevo_db TO hevo_user;
GRANT USAGE ON SCHEMA public TO hevo_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO hevo_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO hevo_user;

-- Create publication
CREATE PUBLICATION hevo_pub FOR ALL TABLES;

-- Create replication slot
SELECT pg_create_logical_replication_slot('hevo_slot', 'pgoutput');
