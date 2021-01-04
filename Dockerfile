FROM alpine

LABEL maintainer="gavarasana@gmail.com"

RUN apk add --update nodejs nodejs-npm

COPY . /src

WORKDIR /src

# RUN npm install

EXPOSE 8081

ENTRYPOINT ["node", "./main.js"]