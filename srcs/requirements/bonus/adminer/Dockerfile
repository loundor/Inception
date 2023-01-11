FROM alpine:3.12

RUN apk update; apk add --no-cache php7 php7-cli php7-common php7-pgsql php7-sqlite3 php7-session php7-mysqli php7-pdo_mysql

RUN wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php" -O index.php

CMD ["php", "-S", "0.0.0.0:8080"]
