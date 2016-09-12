FROM openmedicus/centos-lamp:latest
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

ADD limesurvey2.51.4+160908.xz /limesurvey
RUN mv limesurvey /var/www/html/ ; \
	chown -R apache:apache /var/www/html/limesurvey

