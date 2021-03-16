# Database Backuper docker image
‌Backup Databases Regularly.
This script until now just work for **mongodb** and **postgresql** databases.

## Enviroments
| Variable   |   Description      |
|----------|:-------------:|
| DURATION | Linux `sleep` time format |
| DRIVER | Type of your database. `mongodb` or `postgresql` |
| PGHOST | Hostname or IP address of database |
| PGPORT | default gateway of local network |
| PGDATABASE | Database name |
| PGUSERNAME | Usename of database |
| PGPASSWORD | Password of db user |
| COUNT | Number of last backup that must be saved to volume. if number become longer than this value the first created backup file will be removed |

## Sample Docker-Compose file
```
version '3.1'

services:
  backuper:
    image: gitiserver/db-backup
    environment:
      DURATION: 1d
      DRIVER: postgresql
      PGHOST: postgres
      PGPORT 5432
      PGDATABASE: test
      PGUSERNAME: test
      PGPASSWORD: test
      COUNT: 5
    volumes:
      - "backups:/var/scripts/backup/backups"

  db:
    image: postgres 
    environment:
      - POSTGRES_DB=test
      - POSTGRES_USER=test
      - POSTGRES_PASSWORD=test
volumes:
  backups:

```