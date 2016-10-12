# LimeSurveyDocker

The LimeSurvey installed on CentOS 7. Will start directly in install mode.

== Pull image ==

```
docker pull openmedicus/limesurvey
```

== Using config in container ==

```
docker run --name=limesurveysetup -p 8080:80 -d openmedicus/limesurvey
```

Go to http://localhost:8080/limesurvey and setup.

```
docker stop limesurveysetup
docker commit limesurveysetup limesurvey
docker rm limesurveysetup
```

Finally start the docker

```
docker run --name=limesurvey -p 8080:80 -d limesurvey
```

== Using config file on host ==

```
mkdir /www/limesurvey/
touch /www/limesurvey/config.php
```

SELinux:

```
chcon -Rt svirt_sandbox_file_t /www/
```

```
docker run --name=limesurvey -p 8080:80 -v /www/limesurvey/config.php:/var/www/html/application/config/config.php:rw -d openmedicus/limesurvey
```


== Systemd ==

```
[Unit]
Description=LimeSurvey container
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker run --name=limesurvey -p 8080:80 -v /www/limesurvey/config.php:/var/www/html/application/config/config.php:rw openmedicus/limesurvey
ExecStop=/usr/bin/docker stop -t 2 limesurvey
ExecStopPost=/usr/bin/docker rm -f limesurvey

[Install]
WantedBy=default.target
```

