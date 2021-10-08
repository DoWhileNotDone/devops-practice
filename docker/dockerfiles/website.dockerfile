FROM nginx:alpine

LABEL maintainer="davegthemighty@hotmail.com"

COPY website /website

COPY ./docker/config/website/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80