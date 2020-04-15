FROM balenalib/armv7hf-debian-node:10.19-sid-run
MAINTAINER Stefan Kastenholz <stefan.kastenholz@gmail.com>

RUN npm install node-raumserver@0.1.9

EXPOSE 8080

CMD cd node_modules/node-raumserver && npm start
