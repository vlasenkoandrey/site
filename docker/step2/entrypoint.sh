#!/bin/bash

cd /opt/projects/vlasenkosite/web/build/distributions

java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=4000,suspend=n  -cp "./*" cc.vlasenko.site.MainApplication

nginx -s reload

