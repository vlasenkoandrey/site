#!/usr/bin/env bash

echo "Vlasenko site Docker helper script"


IMAGE_NAME=vlasenkosite2
CONTAINER_NAME=vlasss
PORTS=" -p 80:80  -p 8080:8080"
#можно дебаг порты добавить


CMD="$1"
case "$CMD" in
    build-image)
        CONTAINERS=$(docker ps | grep "vlass" | awk '{print $1}')
        if [[ "$CONTAINERS" == "" ]]; then
            echo "No containers running"
        else
            echo "Containers running: $CONTAINERS"
            docker stop $CONTAINERS
            docker rm $CONTAINERS
        fi
        IMAGE=$(docker images | grep 'vlasenkosite2' | awk '{print $1}')
        docker rmi $IMAGE
        docker build .  --no-cache -t $IMAGE_NAME
        echo "Done"
    ;;


    run-image)
        #docker run  --name $CONTAINER_NAME $PORTS -d $IMAGE_NAME
        docker run --name $CONTAINER_NAME  -p 80:80 -p 8080:8080 -i -t vlasenkosite2
    ;;

    bash)
        docker exec -it $CONTAINER_NAME bash
    ;;


    *)
        echo "No command given or wrong command!"
        echo "Allowed commands: "
        echo " build-image    to build Docker image"
        echo " run-image      to run Docker container"
        echo " bash          to get shell into Docker container"

    ;;
esac

