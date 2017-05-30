#!/usr/bin/env bash

echo "Vlasenko site Docker helper script"


IMAGE_NAME=vlasenkosite1
CONTAINER_NAME=vlasenkosite1
PORTS="-p 80:80  -p 8080:8080"
#можно дебаг порты добавить


CMD="$1"
case "$CMD" in
    build-image)
        CONTAINERS=$(docker ps | grep 'vlasenkosite1' | awk '{print $1}')
        if [[ "$CONTAINERS" == "" ]]; then
            echo "No containers running"
        else
            echo "Containers running: $CONTAINERS"
            docker stop $CONTAINERS
            docker rm $CONTAINERS
        fi
        #IMAGE=$(docker images | grep 'vlasenkosite1' | awk '{print $1}')
        #docker rmi $IMAGE
        docker build .  --no-cache -t $IMAGE_NAME
        echo "Done"
    ;;


    run-image)
        docker run  --name $CONTAINER_NAME $PORTS -d $IMAGE_NAME
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

