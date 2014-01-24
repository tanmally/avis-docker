FROM quintenk/jdk7-oracle

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes/
RUN mkdir -p /opt/bbytes/avis_conf
ADD avis.zip /opt/bbytes/avis.zip 
RUN apt-get install unzip
RUN cd /opt/bbytes ; unzip avis.zip
RUN cd /opt/bbytes/avis; chmod 755 -R .
RUN chmod +x start_avis.sh setenv.sh stop_avis.sh
CMD cd /opt/bbytes/avis; ./start_avis.sh
