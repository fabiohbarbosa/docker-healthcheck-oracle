# ORACLE HEALTH CHECK #

Image docker to check the health of Oracle, to use with **depends_on**.
Basicaly the health check script verify if table exist in database.

## Environment Variables

### SYSTEM_PASSWORD
Password of **SYSTEM** user.

### HEALTHCHECK_TABLE
Table to be checked in health check.