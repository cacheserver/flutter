FROM nginx:stable-alpine
ADD rootfs /
VOLUME [ "/var/lib/flutter" ]
ENV PORT=36081
