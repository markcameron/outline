FROM outlinewiki/outline:version-0.51.0

ENV APP_PATH /opt/outline
WORKDIR $APP_PATH
EXPOSE 3000

RUN yarn build:webpack

RUN yarn global add pm2

ADD run.sh /opt/outline/
RUN ["chmod", "+x", "/opt/outline/run.sh"]

ENTRYPOINT /opt/outline/run.sh
