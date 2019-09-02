FROM node:10.16.3-stretch
LABEL maintainer="Tiryoh <tiryoh@gmail.com>"
WORKDIR /usr/src/app
COPY ./CRANE_X7_JS/package*.json ./
RUN npm install
COPY ./CRANE_X7_JS/ /usr/src/app/
EXPOSE 8080
CMD [ "node", "server.js" ]
