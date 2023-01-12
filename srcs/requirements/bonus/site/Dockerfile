FROM alpine:3.12

RUN apk update; apk add --update nodejs npm

COPY ./web /home

CMD ["node", "/home/launch.js"]
