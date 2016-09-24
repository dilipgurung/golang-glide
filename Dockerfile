FROM golang:1.7
MAINTAINER Dilip Gurung <gurungdilip@gmail.com>

# Install glide package manager
ENV GLIDE_VERSION v0.12.1

RUN set -xe && \
	curl -Ls https://github.com/Masterminds/glide/releases/download/${GLIDE_VERSION}/glide-${GLIDE_VERSION}-linux-amd64.tar.gz | tar -xz --strip-components=1 -C /tmp && \
	mv /tmp/glide /usr/local/bin/ && \
	rm -rf /tmp/*
