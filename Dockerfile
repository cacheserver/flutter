FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/cache/flutter" ]
ENV PORT=36081
ENV NGINX_ENTRYPOINT_WORKER_PROCESSES_AUTOTUNE=1
