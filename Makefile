it: build deploy
build:
	docker buildx bake --load dev
deploy:
	docker stack deploy -c docker-stack.yml flutter-release
remove:
	docker stack rm flutter-release
