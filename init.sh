#!/usr/local/bin/dumb-init /bin/sh

/usr/bin/fastcgi-mono-server4 /applications=/:${APP_WORKDIR} /socket=tcp:127.0.0.1:9000 &

# Debug Mode
# MONO_OPTIONS="--debug" MONO_IOMAP=all 
# /usr/bin/fastcgi-mono-server4 /applications=/:${APP_WORKDIR} /socket=tcp:127.0.0.1:9000 \
#     /printlog=True /loglevels=All --verbose &

cd ${APP_WORKDIR}
#/usr/bin/xsp4 --loglevels=ALL &

/usr/local/bin/start-nginx.sh