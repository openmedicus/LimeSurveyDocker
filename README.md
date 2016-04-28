# LimeSurveyDocker

The LimeSurvey installed on CentOS 7. Will start directly in install mode.

> docker pull openmedicus/limesurvey
> docker run --name=limesurveysetup -p 8080:80 -d openmedicus/limesurvey

Go to http://localhost:8080/limesurvey and setup.

> docker stop limesurveysetup
> docker commit limesurveysetup limesurvey
> docker rm limesurveysetup

> docker run --name=limesurvey -p 8080:80 -d limesurvey

