# Database Backuper image
## Config
for make this script to work you should set this environment variables for container

```
DURATION={{seconds}}
COUNT={{maximum backups that remain}}
```

### Postgresql

```
DRIVER=postgresql
PGHOST={{host}}
PGPORT={{port}}
PGDATABASE={{database}}
PGUSERNAME={{username}}
PGPASSWORD={{password}}
```

## Sample Docker Compose
```
version '3.1'

services:
  app:
    image: mojighahar/db-backup
    environment:
      - DURATION=2
      - DRIVER=postgresql
      - PGHOST=postgres
      - PGPORT=5432
      - PGDATABASE=test
      - PGUSERNAME=test
      - PGPASSWORD=test
      - COUNT=5
    volumes:
      - "backups:/var/scripts/backup/backups"
  postgres:
    image: postgres
    environment:
      - POSTGRES_DB=test
      - POSTGRES_USER=test
      - POSTGRES_PASSWORD=test
volumes:
  backups:

```