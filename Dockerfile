FROM node:alpine

LABEL maintainer Miguel Lima <https://github.com/lima02>

RUN apk add --update alpine-sdk && \
    apk add openssl-dev && \
    apk add libunwind && \
    apk add icu-libs icu-dev && \
    apk add libcurl && \
    apk --update add python py-pip zip groff less bash curl git && \
    pip install -U awscli && \
    apk --purge -v del py-pip && \
    rm -rf `find / -regex '.*\.py[co]'` && \
    apk add --update nodejs
    
WORKDIR /tmp
RUN curl -O https://dot.net/v1/dotnet-install.sh && \
    chmod +x /tmp/dotnet-install.sh && \
    /tmp/dotnet-install.sh --channel LTS

ENV PATH="$PATH:/root/.dotnet"

WORKDIR /src
