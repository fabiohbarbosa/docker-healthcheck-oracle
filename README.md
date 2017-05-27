# ORACLE HEALTH CHECK #

Image docker to check the health of Oracle, to use with **depends_on**.
Basicaly the health check script verify if table exist in database.

## Supported tag
- 11g latest

## Environment Variables

### SYSTEM_PASSWORD
Password of **SYSTEM** user.

### HEALTHCHECK_TABLE
Table to be checked in health check.

### healthcheck.sh

This script run SQL:
select count(*) from ALL_TABLES where TABLE_NAME = '${HEALTHCHECK_TABLE}'

### More information
This repository extends [wnameless/oracle-xe-11g](https://hub.docker.com/r/wnameless/oracle-xe-11g/).  
For more information see wnameless/oracle-xe-11g documentation.