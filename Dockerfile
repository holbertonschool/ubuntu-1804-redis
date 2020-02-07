# Container for developing Sass/Scss at Holberton School

FROM holbertonschool/ubuntu-1804-python37
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

RUN apt-get update

# Install redis server and the redis client
RUN apt-get -y install redis-server
RUN pip3 install redis

RUN sed -i "s/bind .*/bind 127.0.0.1/g" /etc/redis/redis.conf

ADD run.sh /tmp/run.sh
RUN chmod u+x /tmp/run.sh

# start run!
CMD ["./tmp/run.sh"]
