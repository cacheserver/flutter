it: build

build:
	docker buildx bake --load dev
deploy:
	docker stack deploy -c docker-stack.yml flutter
remove:
	docker stack rm flutter
prune:
	docker volume ls --filter=label=com.docker.stack.namespace=flutter -q | xargs docker volume rm
