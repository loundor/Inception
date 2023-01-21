if [ ! -f "/etc/vsftpd.userlist" ]; then

	mkdir -p /var/run/vsftpd/empty
	mkdir -p /home/ftp
	mv /var/www/vsftpd.conf /etc/vsftpd.conf
	useradd -m -s /bin/bash $USER
	echo $USER >> /etc/vsftpd.userlist
	echo "$USER:$PASSWRD" | /usr/sbin/chpasswd
	chown -R $USER:$USER /home/ftp

fi

/usr/sbin/vsftpd /etc/vsftpd.conf
