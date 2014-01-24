FROM quintenk/jdk7-oracle

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir -p /opt/bbytes/
RUN mkdir -p /opt/bbytes/avis_conf
ADD avis.zip /opt/bbytes/avis.zip 
RUN apt-get install unzip
RUN cd /opt/bbytes ; unzip avis.zip
RUN cd /opt/bbytes/avis; chmod 744 -R .
CMD cd /opt/bbytes/avis; ./start_avis.sh
