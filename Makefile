it:
	docker buildx bake --load dev
deploy:
	docker stack deploy -c docker-stack.yml flutter
remove:
	docker stack rm flutter
