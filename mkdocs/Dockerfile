FROM alpine:3.9

LABEL "maintainer"="erdii <erdiicodes@gmail.com>"
LABEL "repository"="https://github.com/erdii/actions"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="MKDOCS"
LABEL "com.github.actions.description"="Build your documentation using mkdocs"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

RUN apk add --no-cache python py-pip \
	&& pip install mkdocs mkdocs-material

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]