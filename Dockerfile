FROM node:10.15.0-alpine

WORKDIR /app

COPY package*.json ./

RUN install

COPY server/package*.json ./server/

WORKDIR /app/server

RUN install

WORKDIR /app

COPY . .

EXPOSE 3000

CMD start
