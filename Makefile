CLEAN_IMAGES = docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
CLEAN_CONTAINERS = docker rm $(docker ps -qa --no-trunc --filter "status=exited")

docker_clean_images:
	${CLEAN_IMAGES}

docker_clean_containers:
	${CLEAN_CONTAINERS}

docker_clean:
	${CLEAN_CONTAINERS} && ${CLEAN_IMAGES}

.PHONY: docker_clean_containers docker_clean_images docker_clean