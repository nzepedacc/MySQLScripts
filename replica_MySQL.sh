#!/bin/bash
FECHA=$(date +%Y%m%d-%H%M%S)
echo "Descargando ..."
mysqldump \
  --column-statistics=0 \
  -p'passwordServer1' \
  -u userserver1    \
  -h IPServer1 \
  -q \
  tabla1 \
  tabla2 \
  tabla3 \
  tabla4 \
  tabla5 \
  tabla6 \
  tabla7 \
  tabla8 \
  tabla9 \
  tabla10 \
  tabla11 \
  
> replica-${FECHA}.sql

#subir
echo "Subiendo ..."
mysql -u userODS BD-ODS -p'PasswordODS' < replica-${FECHA}.sql