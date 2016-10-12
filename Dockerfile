FROM openmedicus/centos-lamp:latest
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

ADD limesurvey2.54.1+161010.tar.xz /
RUN mv limesurvey/* /var/www/html/ ; rm -rf /limesurvey ; chown -R apache:apache /var/www/html

