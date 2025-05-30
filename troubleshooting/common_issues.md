# PostgreSQL Common Issues

## 1. Can't connect to PostgreSQL
- Check if PostgreSQL is running: `systemctl status postgresql-16`
- Check firewall: `firewalld`, `iptables`
- Check `pg_hba.conf` and `postgresql.conf`

## 2. Database slow
- Run `EXPLAIN ANALYZE` on slow queries
- Check `pg_stat_activity`
- Look into logs under `/var/lib/pgsql/16/data/log`

## 3. Disk space issues
- Use `du -sh /var/lib/pgsql/16/data/base/` to find large tables
- Rotate or compress logs
