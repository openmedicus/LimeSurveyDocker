FROM openmedicus/centos-lamp:latest
MAINTAINER Mikkel Kruse Johnsen <mikkel@xmedicus.com>

ADD limesurvey2.57.1+161205.tar.xz /
RUN mv limesurvey/* /var/www/html/ ; rm -rf /limesurvey ; chown -R apache:apache /var/www/html

