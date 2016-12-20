VERSION = 2.57.1

all: build tag push

pull:
	sudo docker pull openmedicus/centos-lamp:latest

build:
	sudo docker build -t limesurvey .

push:
	sudo docker tag limesurvey openmedicus/limesurvey:$(VERSION)
	sudo docker push openmedicus/limesurvey
	sudo docker tag limesurvey openmedicus/limesurvey:latest
	sudo docker push openmedicus/limesurvey

run:
	sudo docker run -i -t limesurvey /bin/bash

