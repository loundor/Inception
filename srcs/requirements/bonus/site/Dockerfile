FROM debian:buster

RUN apt update; apt install -y nodejs npm

COPY ./web /home

CMD ["node", "/home/launch.js"]
