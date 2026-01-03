# hevo-postgres-snowflake-assignment1
# Assignment 1 – PostgreSQL to Snowflake Pipeline using Hevo

## Objective
Configure a data pipeline from PostgreSQL to Snowflake using Hevo with logical (WAL-based) replication.

---

## Source Setup – PostgreSQL (Docker)

- PostgreSQL was deployed locally using Docker.
- Database: `hevo_db`
- User created for Hevo ingestion: `hevo_user`
- Required permissions granted on database and schema.
- Logical replication enabled.
- Publication and replication slot created successfully.
- Local connectivity validated using psql.

### PostgreSQL Details
- Database: `hevo_db`
- User: `hevo_user`
- Publication: `hevo_pub`
- Replication Slot: `hevo_slot`

---

## Destination Setup – Snowflake

- Snowflake account configured successfully.
- Warehouse: `COMPUTE_WH`
- Database: `HEVO_DB`
- Schema: `PUBLIC`
- Role created: `HEVO_ROLE`
- Role granted required privileges:
  - USAGE on warehouse
  - USAGE and CREATE on database
  - CREATE, SELECT, INSERT, UPDATE, DELETE on schema objects
- Hevo destination connection tested and saved successfully.

---

## Hevo Pipeline Configuration

- Pipeline created using Hevo Edge.
- Source: PostgreSQL (Logical Replication).
- Destination: Snowflake.
- Publication and replication slot configured correctly.
- Pipeline configuration validated successfully.

---

## Limitation Encountered

- PostgreSQL source is running locally (Docker on localhost).
- Hevo requires the source database to be accessible via a public DNS/IP.
- A tunneling solution (ngrok) was attempted to expose PostgreSQL port 5432.
- ngrok currently requires credit/debit card verification for TCP tunnels, even on free accounts.
- Due to this restriction, a public endpoint could not be created.

This limitation is environmental and not related to database, replication, or permission configuration.

---

## Conclusion

The PostgreSQL to Snowflake pipeline configuration using Hevo is technically complete and correct.
All source, destination, replication, and permission checks passed successfully.
The pipeline could not be executed only due to the inability to expose the local PostgreSQL instance publicly.

With a publicly reachable PostgreSQL instance (cloud-hosted or verified tunnel), the pipeline would run successfully without any configuration changes.

---

## Repository Contents

- `docker-run.txt` – Docker command used to start PostgreSQL
- `sql/01_create_user.sql`
- `sql/02_grants.sql`
- `sql/03_replication.sql`

---

## Notes
This assignment demonstrates end-to-end pipeline configuration, logical replication setup, and Snowflake integration using Hevo.

## Screenshots

Validation screenshots are available in the `screenshots/` directory:

1. Docker PostgreSQL container running
2. Logical replication publication created
3. Replication slot created
4. Hevo Snowflake destination configuration success
5. Hevo PostgreSQL source connectivity limitation
6. ngrok TCP tunnel restriction (optional)


