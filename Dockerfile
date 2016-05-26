FROM centos-lamp
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

ADD limesurvey250plus-build160526.7z /limesurvey
RUN mv limesurvey /var/www/html/ ; \
	chown -R apache:apache /var/www/html/limesurvey

