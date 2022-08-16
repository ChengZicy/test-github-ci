FROM node:16
ARG BUILD_ENV=dev
ENV APP_ENV=$BUILD_ENV
RUN mkdir /app
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build

FROM nginx
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=0 /app/dist /usr/share/nginx/html
