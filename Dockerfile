FROM balenalib/armv7hf-debian-node:10.19-sid-build as build
MAINTAINER Stefan Kastenholz <stefan.kastenholz@gmail.com>

RUN install_packages git
RUN git clone https://github.com/ChriD/node-raumserver.git && cd node-raumserver/ && npm install

EXPOSE 8080

CMD cd node-raumserver/ && node test.js
