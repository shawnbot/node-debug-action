FROM node

RUN apt-get update && apt-get install -y jq tree

WORKDIR /
COPY . .

RUN npm install --production
# RUN npm install -g fx

ENTRYPOINT "/entrypoint.sh"
