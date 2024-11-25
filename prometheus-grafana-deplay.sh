cd ..
cd prometheus-grafana
docker compose up -d

docker run -d --restart=always -p 9487:9487 -v /var/run/docker.sock:/var/run/docker.sock wywywywy/docker_stats_exporter:latest
