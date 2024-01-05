# What this is
Docker compose HTTP2 Apache PHP

port 80 is set to redirect.

# Usage
1. $ git clone https://github.com/Ramblec/docker-compose-http2-apache-php.git
2. $ cd docker-compose-http2-apache-php
3. make KEY certification file and CRT certification file and change the two files(/apache/ssl/server.key & /apache/ssl/serve.crt)
4. change the content file(/data/html/index.php & /php/index.php) if you need
5. $ docker compose up
    [If the configuration file does not mount properly]
   comment out the line of mounting configuration file in "docker-compose.yml"
   $ docker compose up -d
   $ docker cp /<path of httpd.conf in docker-compose-http2-apache-php> <apache container name>:/usr/local/apache2/conf/httpd.conf
   $ docker exec -it apache-1 apachectl -k restart
   $ docker compose restart

# Tutorial
