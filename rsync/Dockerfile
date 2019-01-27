FROM alpine:3.8

LABEL "maintainer"="erdii <erdiicodes@gmail.com>"
LABEL "repository"="https://github.com/erdii/actions"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="RSYNC"
LABEL "com.github.actions.description"="Deploy files via rsync"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="green"

RUN apk add --no-cache rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]