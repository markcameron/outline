#!/bin/sh

cd /opt/outline

yarn sequelize:migrate

env NODE_ENV=production pm2-docker start index.js --name outline
