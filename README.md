# PostgreSQL DBA Scripts (Bash & SQL)

This folder contains practical Bash and SQL scripts commonly used by
PostgreSQL DBAs for health checks and troubleshooting.

## Bash Scripts
- **postgres_health_check.sh**
  - Checks PostgreSQL service status
  - Verifies listening ports
  - Displays PostgreSQL processes
  - Shows disk and memory usage
  - Reviews recent PostgreSQL logs

## SQL Scripts
- **postgres_basic_health.sql**
  - Displays PostgreSQL version and uptime
  - Checks active and total connections
  - Identifies long-running queries
  - Shows replication status
  - Displays checkpoint and background writer statistics

## Usage

Run Bash scripts from the OS:
```bash
sudo ./scripts/bash/postgres_health_check.sh
