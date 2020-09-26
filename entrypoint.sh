#!/bin/sh

if [ -z $PGPASSWORD  ]; then
  export PGPASSWORD=$POSTGRES_PASSWORD
fi

psql $@