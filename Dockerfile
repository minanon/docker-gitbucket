FROM debian:stable

MAINTAINER minanon

ENV GITBUCKET_VERSION 2.4.1

# jre1.7.0_67
ADD http://javadl.sun.com/webapps/download/AutoDL?BundleId=95116 /opt/java.tar.gz

RUN cd /opt \
    && gzip -d java.tar.gz \
    && tar -xf java.tar \
    && mv $(tar -tf java.tar | head -n 1) jre \
    && rm -f java.tar \
    && mkdir /opt/gitbucket

ADD https://github.com/takezoe/gitbucket/releases/download/2.4.1/gitbucket.war /usr/local/bin/gitbucket.war

EXPOSE 8080

CMD ["/opt/jre/bin/java", "-jar", "/usr/local/bin/gitbucket.war", "--gitbucket.home=/opt/gitbucket"]
