# syntax=docker/dockerfile:1

# Base setup
ARG NODE_VERSION=18.14.2
FROM node:${NODE_VERSION}-alpine as base
WORKDIR /usr/src/app

# Dependencies stage
FROM base as deps
COPY package*.json ./
RUN npm ci --omit=dev

# Build stage
FROM deps as build
COPY . .
RUN npm run build

# Final stage
FROM base as final
ENV NODE_ENV production
USER node
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY --from=build /usr/src/app/build ./build
COPY ./public ./public
COPY package.json .
EXPOSE 3000
CMD npm start
