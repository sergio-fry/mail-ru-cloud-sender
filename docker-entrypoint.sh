#!/bin/bash

echo "Mounting Mail.ru Cloud..."
marcfs /tmp/mailru -o username=$MAILRU_LOGIN,password=$MAILRU_PASSWORD,cachedir=/tmp/cache

set -e

exec "$@"
