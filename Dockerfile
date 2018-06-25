FROM openwhisk/action-nodejs-v8

RUN mkdir -p /nodejsAction
COPY app.js  /nodejsAction/
COPY runner.js /nodejsAction/
COPY src/service.js /nodejsAction/src
ENTRYPOINT ["node", "--expose-gc", "app.js"]