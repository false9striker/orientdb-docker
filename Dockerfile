FROM bbytes/java7

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes
ADD orientdb-community-1.7-SNAPSHOT.zip /opt/bbytes/orientdb-community-1.7-SNAPSHOT.zip
RUN apt-get install unzip
RUN  cd /opt/bbytes ; unzip orientdb-community-1.7-SNAPSHOT.zip
RUN cd /opt/bbytes/orientdb-community-1.7-SNAPSHOT/bin; chmod 744 -R .
EXPOSE 2480
EXPOSE 2424
CMD cd /opt/bbytes/orientdb-community-1.7-SNAPSHOT/bin; ./server.sh