FROM node:18-alpine
WORKDIR /app

COPY ./vue-weather/package.json ./vue-weather/yarn.lock ./
RUN yarn install

COPY ./vue-weather .
RUN yarn build

EXPOSE 8080
CMD ["npx", "http-server", "dist", "-p", "8080"]