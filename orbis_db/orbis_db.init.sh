#!/bin/bash

if [[ -n $(su --login postgres --command "psql -d orbis -c '\q' 2>&1") ]];
then
  su --login postgres --command "createdb orbis";
  su --login postgres --command "createuser --superuser webapp";

  cp /opt/lib/pgrouting/librouting* /usr/lib/postgresql/9.1/lib/;

  su --login postgres --command "pg_restore --dbname orbis -Fc /opt/orbis_db.final.pg_dump" || true;
fi;
