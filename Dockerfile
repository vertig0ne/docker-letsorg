FROM linuxserver/letsencrypt

RUN \
 apk add --no-cache \
	php7-sqlite3 \
	php7-xmlrpc 

COPY /root /
