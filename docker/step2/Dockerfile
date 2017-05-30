#
FROM vlasenkosite1:latest


RUN cd /opt/projects/vlasenkosite && \
    git fetch /opt/projects/vlasenkosite && \
    git checkout origin/xorda
RUN gradle build -p /opt/projects/vlasenkosite/web

#todo download static
#todo run

RUN echo "STEP 03 finished - projects vlasenko started"

