FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/cache/flutter" ]
ENV PORT=80
ENV NGINX_ENTRYPOINT_WORKER_PROCESSES_AUTOTUNE=1
