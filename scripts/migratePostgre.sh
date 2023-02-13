#!/bin/sh
basedir=$(dirname "$(echo "$0" | sed -e 's,\\,/,g')")
echo "OVO je BASEDIR: ${basedir}"

if [ -x "$basedir/node" ]; then
  echo "THEN DEO - VUJO"
else 
  echo "ELSE DEO - VUJO"
fi

npx prisma migrate deploy
# node node_modules\\prisma\\build\\index.js migrate deploy
