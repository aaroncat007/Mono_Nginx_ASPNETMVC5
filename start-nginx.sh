#!/bin/bash

if [ -z "$NGINX_PORT" ]; then
	export NGINX_PORT=${PORT0:-80}
fi

if [ -z "$APP_PORT" ]; then
	export APP_PORT=${PORT1:-9000}
fi

if [ -z "$APP_WORKDIR" ]; then
	export APP_WORKDIR=${$APP_WORKDIR:/app}
fi

sed -i "s/<NGINX_PORT>/$NGINX_PORT/gi" /etc/nginx/sites-available/default
sed -i "s/<APP_PORT>/$APP_PORT/gi" /etc/nginx/sites-available/default
sed -i "s/<APP_WORKDIR>/$(echo $APP_WORKDIR | sed "s/\//\\\\\//g")/gi" /etc/nginx/sites-available/default

/usr/sbin/nginx -g "daemon off;"
# /etc/init.d/nginx restart
