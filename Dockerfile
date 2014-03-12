FROM bbytes/java7

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes/
RUN mkdir -p /opt/bbytes/avis_conf
ADD avis-0.0.9-SNAPSHOTT.zip /opt/bbytes/avis-0.0.9-SNAPSHOTT.zip 
RUN apt-get install unzip
RUN cd /opt/bbytes ; unzip avis-0.0.9-SNAPSHOTT.zip
RUN cd /opt/bbytes/avis; chmod 755 -R .
RUN cd /opt/bbytes/avis; mkdir -p /opt/bbytes/avis/logs
RUN cd /opt/bbytes/avis; chmod +x start_avis.sh setenv.sh stop_avis.sh
CMD cd /opt/bbytes/avis; ./start_avis.sh
