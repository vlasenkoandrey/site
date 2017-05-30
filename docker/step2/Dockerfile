#
FROM vlasenkosite1:latest


RUN echo "STEP 02 start - clone vlasenkosite"
RUN cd /opt/projects/vlasenkosite && git checkout origin/xorda && cd web  &&  gradle clean & gradle build
RUN echo "STEP 03 finished - projects vlasenkosite build"

EXPOSE 80 8080 4000

ADD entrypoint.sh /

CMD ["entrypoint"]


