FROM tutum/fedora:21

MAINTAINER Yohan Graterol <yohangraterol92@gmail.com>

VOLUME ["/app/"]

RUN yum update -y

RUN yum install redhat-rpm-config -y

RUN yum install freetype-devel libjpeg-devel libpng-devel

RUN yum groupinstall -y "Development Tools"

RUN yum install -y python-devel python-virtualenv supervisor mariadb-libs mariadb-devel postgresql-devel postgresql-libs sqlite python-pip GeoIP GeoIP-update GeoIP-devel python-pygeoip

RUN pip install django==1.6

EXPOSE 8000

