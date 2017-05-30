#
FROM vlasenkosite1:latest


RUN echo "STEP 01 start - build vlasenkosite"
RUN cd /opt/projects/vlasenkosite && git checkout origin/xorda && cd web  &&  gradle clean && gradle build
RUN echo "STEP 01 finished - projects vlasenkosite built"

EXPOSE 80 8080 4000

ADD entrypoint.sh /

CMD ["sh", "/entrypoint.sh"]


