FROM docker:stable
LABEL MAINTAINER="KeisukeYamashita<19yamashita15@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
RUN apk add bash && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
