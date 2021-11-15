FROM node:14-alpine as build

WORKDIR /run/

COPY package.json package-lock.json /run/

RUN  npm ci --silent

COPY . .

FROM node:14-alpine as dev

WORKDIR /run/

COPY --from=build /run/node_modules node_modules

USER node

CMD npm run live-reload