FROM alpine:3.12

RUN apk update; \
    apk add --update nodejs npm

COPY ./web /

CMD ["node", "launch.js"]
