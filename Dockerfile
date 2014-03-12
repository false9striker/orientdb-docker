FROM bbytes/java7

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes
ADD orientdb-1.7.zip /opt/bbytes/orientdb-1.7.zip
RUN apt-get install unzip
RUN  cd /opt/bbytes ; unzip orientdb-1.7.zip
RUN cd /opt/bbytes/orientdb-1.7/bin; chmod 744 -R .
EXPOSE 2480
EXPOSE 2424
CMD cd /opt/bbytes/orientdb-1.7/bin; ./server.sh