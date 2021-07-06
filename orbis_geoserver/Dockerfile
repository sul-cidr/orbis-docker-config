FROM tomcat:6-jre7

LABEL author="Simon Wiles <simon.wiles@stanford.edu>"
EXPOSE 8080/tcp

ENV GEOSERVER_VERSION 2.1.4

# Install the Microsoft truetype fonts
# Install netcat (so we can check whether postgres is up before launching)
RUN echo "deb http://httpredir.debian.org/debian jessie contrib" >> /etc/apt/sources.list
RUN apt-get update -qq \
 && apt-get install -yq ttf-mscorefonts-installer netcat \
 && rm -rf /var/lib/apt/lists/*

# Install the GeoServer WAR and prune unneeded files
RUN cd /tmp \
 && wget http://sourceforge.net/projects/geoserver/files/GeoServer/${GEOSERVER_VERSION}/geoserver-${GEOSERVER_VERSION}-war.zip \
 && unzip geoserver-${GEOSERVER_VERSION}-war.zip -d /usr/local/tomcat/webapps/ geoserver.war \
 && rm -rf geoserver-${GEOSERVER_VERSION}-war.zip \
 && cd /usr/local/tomcat/webapps/ \
 && unzip geoserver.war -d geoserver \
 && rm geoserver.war \
 && cd geoserver/data/ \
 && rm -rf coverages \
 && rm -rf demo \
 && rm -rf workspaces \
 && rm -rf data \
 && rm -rf styles

COPY data/workspaces /usr/local/tomcat/webapps/geoserver/data/workspaces
COPY data/data /usr/local/tomcat/webapps/geoserver/data/data
COPY data/styles /usr/local/tomcat/webapps/geoserver/data/styles

# Uncompress the NE data
RUN cd /usr/local/tomcat/webapps/geoserver/data/data/nedata && cat ne10m.tiff.bz2_* | bunzip2 -c > ne10m.tiff

# Set CATALINA_OPTS
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-Xms768m -Xmx1560m -XX:+UseConcMarkSweepGC -XX:NewSize=48m"

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
