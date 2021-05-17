# Database Backuper docker image
‌Backup Databases Regularly.
This script until now just work for **mongodb** and **postgresql** databases.

## Enviroments
| Variable   |   Description      |
|----------|:-------------:|
| DURATION | Linux `sleep` time format |
| DRIVER | Type of your database. `mongodb` or `postgresql` |
| DB_HOST | Hostname or IP address of database |
| DB_PORT | default gateway of local network |
| DB_DATABASE | Database name |
| DB_USERNAME | Usename of database |
| DB_PASSWORD | Password of db user |
| COUNT | Number of last backup that must be saved to volume. if number become longer than this value the first created backup file will be removed |
| MDAUTHDB | authentication Database just use for `mongodb` |

## Sample Docker-Compose file
```
version '3.1'

services:

  backuper:
    image: gitiserver/db-backup:2.0
    environment:
      DURATION: 1d
      DRIVER: postgresql
      DB_HOST: postgres
      DB_PORT 5432
      DB_DATABASE: foo
      DB_USERNAME: bar
      DB_PASSWORD: changeme
      COUNT: 5
    volumes:
      - "backups:/var/scripts/backup/backups"

  db:
    image: postgres 
    environment:
      POSTGRES_DB: foo
      POSTGRES_USER: bar
      POSTGRES_PASSWORD: changeme

volumes:
  backups:

```
