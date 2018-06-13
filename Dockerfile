FROM node:9.11.2-alpine
 
RUN echo $'\
http://dl-cdn.alpinelinux.org/alpine/v3.8/main\n\
http://dl-cdn.alpinelinux.org/alpine/v3.8/community' > /etc/apk/repositories && \
    apk update && \
	apk add --no-cache apk-tools && \
	apk add --no-cache bash curl git openssh less zip mongodb-tools mongodb unzip && \
	apk add --no-cache ca-certificates wget && update-ca-certificates && \
	rm /var/cache/apk/*
