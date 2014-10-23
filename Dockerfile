FROM tutum/fedora:21

MAINTAINER Yohan Graterol <yohangraterol92@gmail.com>

VOLUME ["/app/"]

RUN yum update -y

RUN yum groupinstall -y "Development Tools"

RUN yum install -y python-devel python-virtualenv supervisor mariadb-libs mariadb-devel postgresql-devel postgresql-libs sqlite python-pip

RUN pip install django

EXPOSE 8000

