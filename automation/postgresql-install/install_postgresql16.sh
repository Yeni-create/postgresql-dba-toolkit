#!/bin/bash
# install_postgresql16.sh - Installs PostgreSQL 16 on Rocky Linux 9

set -e

echo "[INFO] Adding PostgreSQL 16 repository..."
dnf install -y https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm

echo "[INFO] Disabling built-in PostgreSQL module..."
dnf -qy module disable postgresql

echo "[INFO] Installing PostgreSQL 16 server..."
dnf install -y postgresql16-server

echo "[INFO] Initializing database..."
/usr/pgsql-16/bin/postgresql-16-setup initdb

echo "[INFO] Enabling and starting PostgreSQL service..."
systemctl enable postgresql-16
systemctl start postgresql-16

echo "[INFO] PostgreSQL 16 installed and running."
