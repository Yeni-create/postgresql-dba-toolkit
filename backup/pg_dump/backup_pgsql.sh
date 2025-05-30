#!/bin/bash
# backup_pgsql.sh - Simple pg_dump backup script for PostgreSQL

BACKUP_DIR="/var/backups/pgsql"
DATE=$(date +%F_%H-%M)
DB_NAME="your_database_name"
USER="postgres"

mkdir -p "$BACKUP_DIR"

echo "[INFO] Starting backup for $DB_NAME..."
pg_dump -U $USER $DB_NAME > "$BACKUP_DIR/${DB_NAME}_$DATE.sql"

if [ $? -eq 0 ]; then
  echo "[SUCCESS] Backup saved to $BACKUP_DIR/${DB_NAME}_$DATE.sql"
else
  echo "[ERROR] Backup failed!"
fi
