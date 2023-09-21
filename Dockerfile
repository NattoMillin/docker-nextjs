FROM node:20.4.0-bookworm-slim as base

WORKDIR /src

RUN ["npm","install", "-g", "npm@9.8.0"]

# malti stage build
FROM base as dev

ENV NODE_ENV=development
COPY ./src/package*.json ./

RUN ["npm" ,"install"]