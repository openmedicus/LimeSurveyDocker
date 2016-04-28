FROM centos-lamp
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

ADD limesurvey250plus-build160426.tar.bz2 /
RUN mv limesurvey /var/www/html/ ; \
	chown -R apache:apache /var/www/html/limesurvey

