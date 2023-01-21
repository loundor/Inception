FROM debian:buster

RUN apt update; apt install -y vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd.conf
COPY ./conf/config.sh /home/config.sh

CMD ["bash", "/home/config.sh"]
