FROM nginx

WORKDIR /nginx_server

RUN apt update

COPY nginx_server.conf ../etc/nginx/nginx.conf

CMD nginx -g 'daemon off;'