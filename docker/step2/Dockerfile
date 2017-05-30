#
FROM vlasenkosite1:latest


RUN cd /opt/projects/vlasenkosite && \
    git fetch /opt/projects/vlasenkosite && \
    git checkout origin/xorda
RUN gradle build -p /opt/projects/vlasenkosite
#RUN cd /opt/projects/vlasenkosite/web/build/distributions && \
#    java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=4000,suspend=n  -cp "./*" cc.vlasenko.site.MainApplication


#todo download static
#todo run

RUN echo "STEP 03 finished - projects vlasenko started"

