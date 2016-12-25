# docker-netbox

## Quickstart

To get NetBox up and running:

  `docker run --name netbox -v /netbox_etc:/etc/netbox-nginx -p 80:80 -e ... babim/netbox`

## Default credentials:

    Username: admin
    Password: admin

## Configuration

You can configure the app at runtime using variables (see docker-compose.yml). Possible environment variables include:
netbox use PostgreSQL (not support mysql)
```
    SUPERUSER_NAME
    SUPERUSER_EMAIL
    SUPERUSER_PASSWORD
    ALLOWED_HOSTS
    DB_NAME
    DB_USER
    DB_PASSWORD
    DB_HOST
    DB_PORT
    SECRET_KEY
    EMAIL_SERVER
    EMAIL_PORT
    EMAIL_USERNAME
    EMAIL_PASSWORD
    EMAIL_TIMEOUT
    EMAIL_FROM
    LOGIN_REQUIRED
    MAINTENANCE_MODE
    NETBOX_USERNAME
    NETBOX_PASSWORD
    PAGINATE_COUNT
    TIME_ZONE
    DATE_FORMAT
    SHORT_DATE_FORMAT
    TIME_FORMAT
    SHORT_TIME_FORMAT
    DATETIME_FORMAT
    SHORT_DATETIME_FORMAT
```
