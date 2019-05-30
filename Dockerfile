FROM mcr.microsoft.com/dotnet/core/sdk:2.1-alpine3.9

LABEL maintainer Miguel Lima <https://github.com/lima02>

RUN apk add --update alpine-sdk && \
    apk --update add python py-pip zip groff less bash curl git && \
    pip install -U awscli==1.16.141 && \
    apk --purge -v del py-pip && \
    rm -rf `find / -regex '.*\.py[co]'` && \
    apk add bash && \
    apk add --update npm && \
    apk add --update nodejs

WORKDIR /src
ENTRYPOINT ["/bin/bash", "-c"]
