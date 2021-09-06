ARG BASE=alpine:3.13
FROM ${BASE} as lightversion

# tor-0.4.6.7-r0 on edge
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN apk add --no-cache 'tor@edge' privoxy s6

ADD s6 /etc/s6

ADD tor.conf /etc/tor/torrc
ADD privoxy.conf /etc/privoxy/config

VOLUME /var/lib/tor
EXPOSE 8118
EXPOSE 9050

CMD [ "s6-svscan", "/etc/s6"]

