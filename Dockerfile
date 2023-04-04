FROM alpine AS build
RUN apk update && apk add hugo
COPY . /src
WORKDIR /src
RUN hugo

FROM nginxinc/nginx-unprivileged:alpine
COPY --from=build /src/public /usr/share/nginx/html
RUN sed -i '3 a\    absolute_redirect off;' /etc/nginx/conf.d/default.conf

USER 10200
EXPOSE 8080
