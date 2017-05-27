#!/bin/bash
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

CHECK=$(/u01/app/oracle/product/11.2.0/xe/bin/sqlplus -s system/${SYSTEM_PASSWORD}@localhost <<END
  set pagesize 0 feedback off verify off heading off echo off;
  select count(*) from ALL_TABLES where TABLE_NAME = '${HEALTHCHECK_TABLE}';
  exit;
END
)

# Number check
if ! [ "${CHECK}" -eq "${CHECK}" ] 2>/dev/null; then
  echo ${CHECK}
  exit 1
fi

# Exist table check
if [ ${CHECK} -gt 0 ]; then
  echo "Healthy"
  exit 0
else
  exit 1
fi