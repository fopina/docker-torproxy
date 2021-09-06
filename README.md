# docker-torproxy
TOR + privoxy ready to use


## Usage

Run it with privoxy (HTTP proxy) on port 8118 and TOR SOCKS proxy on 9050:

```
docker run -p 8118:8118 \
           -p 9050:9050 \
           fopina/torproxy:latest
```
