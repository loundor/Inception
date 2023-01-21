FROM alpine:3.12

RUN apk update; \
    apk add --no-chache -y vsftpd

COPY ./conf/vsftpd.conf /var/www/vsftpd.conf
COPY ./conf/config.sh /config.sh

CMD ["bash", "/config.sh"]
