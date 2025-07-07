## About
This is a cache server for the <a href="https://docs.flutter.dev/release/archive">Flutter SDK archive</a>. It is designed to be deployed in a private network to cache Flutter SDK releases to reduce the load on the public servers and speed up the download process.

## Usage

The cache server listens on port `36081` by default. You can change the port by setting the `PORT` environment variable.

To run the cache server, you can use the following command:
```bash
docker run -p 36081:36081 -v /path/to/cache:/var/cache/flutter -d chocolatefrappe/flutter-cacheserver:main
```

or via Docker Compose:

```yaml
services:
  flutter-cache-server:
    image: chocolatefrappe/flutter-cacheserver:main
    ports:
      - mode: ingress
        target: 36081
        published: 36081
        protocol: tcp
    volumes:
      - type: volume
        source: flutter-cache
        target: /var/cache/flutter
    stop_grace_period: 1m
    restart: always
volumes:
  flutter-cache:
```
