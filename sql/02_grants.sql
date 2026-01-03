-- Grant schema usage
GRANT USAGE ON SCHEMA public TO hevo_user;

-- Grant table privileges
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO hevo_user;

-- Grant future table privileges
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT, INSERT, UPDATE, DELETE
ON TABLES
TO hevo_user;
