FROM resin/raspberrypi-node
MAINTAINER Stefan Kastenholz <stefan.kastenholz@gmail.com>

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/ChriD/node-raumserver.git && cd node-raumserver/ && npm install

EXPOSE 8080

CMD cd node-raumserver/ && node test.js
