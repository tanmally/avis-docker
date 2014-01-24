FROM quintenk/jdk7-oracle

MAINTAINER bbytes  "info@beyondbytes.co.in"

RUN mkdir /opt/bbytes/
ADD avis.zip /opt/bbytes/avis.zip 
RUN apt-get install unzip
RUN cd /opt/bbytes ; unzip avis.zip
RUN cd /opt/bbytes/avis; chmod 744 -R .
RUN mkdir /opt/bbytes/avis_conf
chmod 744 -R /opt/bbytes/avis_conf
CMD cd /opt/bbytes/avis; ./start_avis.sh
