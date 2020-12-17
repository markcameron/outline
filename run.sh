#!/bin/sh

cd /opt/outline

yarn sequelize:migrate --env production-ssl-disabled

env NODE_ENV=production pm2-docker start ./build/server/index.js --name outline
