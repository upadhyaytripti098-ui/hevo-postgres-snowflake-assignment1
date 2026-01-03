-- Create publication for logical replication
CREATE PUBLICATION hevo_pub FOR ALL TABLES;

-- Create logical replication slot
SELECT * FROM pg_create_logical_replication_slot('hevo_slot', 'pgoutput');

