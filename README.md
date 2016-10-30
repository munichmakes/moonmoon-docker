# Docker image from moonmoon feed aggregator
```
git clone https://github.com/tiefpunkt/moonmoon-docker
git clone https://github.com/mauricesvay/moonmoon.git moonmoon-docker/src
docker build -t moonmoon moonmoon-docker
docker run -d -p 80:80 --name moonmoon01 -v /data/moonmoon01:/data moonmoon
```
