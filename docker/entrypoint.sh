#!/bin/bash

cd /opt/projects/vlasenkosite
git checkout origin/xorda
cd web
gradle clean & gradle build
cd build/distributions

java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=4000,suspend=n  -cp "./*" cc.vlasenko.site.MainApplication &

service nginx restart
nginx -s reload

