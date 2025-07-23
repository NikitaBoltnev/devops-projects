FROM alpine:3.22

RUN adduser -D -g '' newuser

WORKDIR /app

COPY server/server.c server/nginx/nginx.conf server/build.sh ./

RUN chmod +x ./build.sh && \
    sh ./build.sh && \
    mkdir -p /run/nginx /var/lib/nginx /var/log/nginx && \
    chown -R newuser:newuser /run /var/lib/nginx /var/log/nginx /app /etc/nginx && \
    chmod -R 755 /run /var/lib/nginx /var/log/nginx

COPY server/nginx/nginx.conf /etc/nginx/nginx.conf

USER newuser

CMD ["sh", "-c", "spawn-fcgi -p 8080 ./server & nginx -g 'daemon off;'"]