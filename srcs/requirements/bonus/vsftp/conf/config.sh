if [ ! -f "/etc/vsftpd.user" ]; then

	mkdir -p /var/run/vsftpd/empty
	useradd -m -s /bin/bash $USER
	echo $USER >> /etc/vsftpd.user
	echo "$USER:$PASSWRD" | /usr/sbin/chpasswd
	chown -R www-data:$USER /home/"$USER"/ftp
fi

/usr/sbin/vsftpd /etc/vsftpd.conf
