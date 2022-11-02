FROM nginxinc/nginx-unprivileged:alpine

COPY . /usr/share/nginx/html/

EXPOSE 8080
