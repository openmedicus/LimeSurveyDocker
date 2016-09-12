all: build tag push

pull:
	sudo docker pull openmedicus/centos-lamp:latest

build:
	sudo docker build -t limesurvey .

tag:
	sudo docker tag limesurvey openmedicus/limesurvey:latest

push:
	sudo docker push openmedicus/limesurvey

