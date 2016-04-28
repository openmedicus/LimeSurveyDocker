all: build tag push

build:
	sudo docker build -t limesurvey .

tag:
	sudo docker tag -f limesurvey openmedicus/limesurvey:latest

push:
	sudo docker push openmedicus/limesurvey

