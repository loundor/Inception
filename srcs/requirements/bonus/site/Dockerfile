FROM debian:buster

RUN apk update; \
    apk add --update nodejs npm

COPY ./conf /

CMD ["node", "run.js"]
