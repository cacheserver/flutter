## About
A simple Flutter SDK cache server using NGINX `proxy_cache` module.

## Usage

Replace `https://storage.googleapis.com/flutter_infra_release/releases/` with the server release url `http://localhost:8080/releases/`.

Example:

- Replace `https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.0-stable.tar.xz`
- With `http://localhost:8080/releases/stable/linux/flutter_linux_3.27.0-stable.tar.xz`

## References
https://docs.nginx.com/nginx/admin-guide/content-cache/content-caching/
https://www.apalrd.net/posts/2024/cluster_debcache/
