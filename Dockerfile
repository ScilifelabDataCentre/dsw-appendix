FROM nginxinc/nginx-unprivileged:alpine

RUN sed -i '3 a\    absolute_redirect off;' /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html/

EXPOSE 8080
