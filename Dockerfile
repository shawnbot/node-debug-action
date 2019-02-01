FROM node

LABEL version="0.0.0"
LABEL repository="http://github.com/shawnbot/node-debug-action"
LABEL homepage="http://github.com/shawnbot/node-debug-action"
LABEL maintainer="Shawn Allen <shawnbot@github.com>"

LABEL com.github.actions.name="Debug Node Environment"
LABEL com.github.actions.description="Print a bunch of useful info about your environment"
LABEL com.github.actions.icon="life-bouy"
LABEL com.github.actions.color="red"

RUN apt-get update && apt-get install -y jq tree

COPY . /

ENTRYPOINT "/entrypoint.sh"
CMD []
