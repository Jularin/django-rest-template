#!/bin/bash

if [ "$DATABASE" = "postgres" ]
then
  echo "Waiting for postgres..."

  while ! nc -z $DB_HOST $DB_PORT; do
      sleep 0.1
  done

  echo "PostgreSQL stated"
fi

python manage.py migrate
python manage.py collectstatic --no-input --clear

exec "$@"
