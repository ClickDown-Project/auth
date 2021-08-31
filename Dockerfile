# syntax=docker/dockerfile:1
FROM node:14.16-alpine

WORKDIR /auth

COPY . /auth

RUN cd /auth \ && yarn install

CMD ["yarn", "start:dev"]
