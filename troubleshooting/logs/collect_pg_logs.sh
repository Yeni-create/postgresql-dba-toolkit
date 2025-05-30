#!/bin/bash
# collect_pg_logs.sh - Collect PostgreSQL logs for troubleshooting

PGLOG="/var/lib/pgsql/16/data/log"
OUTPUT_DIR="/tmp/pg_logs_backup"
DATE=$(date +%F_%H-%M)

mkdir -p "$OUTPUT_DIR"
cp -r "$PGLOG" "$OUTPUT_DIR/logs_$DATE"

echo "[INFO] Logs copied to $OUTPUT_DIR/logs_$DATE"
