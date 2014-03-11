FROM bbytes/java7

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes/
RUN mkdir -p /opt/bbytes/avis_conf
ADD avis-0.0.9.zip /opt/bbytes/avis-0.0.9.zip 
RUN apt-get install unzip
RUN cd /opt/bbytes ; unzip avis-0.0.9.zip
RUN cd /opt/bbytes/avis-0.0.9; chmod 755 -R .
RUN cd /opt/bbytes/avis-0.0.9; mkdir -p /opt/bbytes/avis-0.0.9/logs
RUN cd /opt/bbytes/avis-0.0.9; chmod +x start_avis.sh setenv.sh stop_avis.sh
CMD cd /opt/bbytes/avis-0.0.9; ./start_avis.sh
