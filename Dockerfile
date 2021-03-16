FROM alpine:latest

RUN apk update && apk add postgresql-client mongodb-tools && apk add bash && rm -rf /var/cache/apk/*

WORKDIR /var/scripts/backup

VOLUME [ "/var/scripts/backup/backups" ]

COPY . .

CMD ["bash", "index.sh"]