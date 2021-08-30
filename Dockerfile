# syntax=docker/dockerfile:1
FROM node:14.16

WORKDIR /auth

COPY ["package.json", "yarn.lock", "./auth/"]

COPY . /auth

RUN cd /auth \ && yarn install

CMD ["yarn", "start:dev"]
