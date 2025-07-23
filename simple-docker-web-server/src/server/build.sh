#!/bin/sh

apk add --no-cache build-base fcgi-dev spawn-fcgi  nginx gcc musl-dev
gcc server.c -o server -lfcgi