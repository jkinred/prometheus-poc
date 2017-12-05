# Prometheus POC

This project uses Docker Compose to quickly stand up a Prometheus/Grafana/Node Exporter example setup.

# Pre-requisites

* Docker 17.06 or later
* docker-compose

# Run it

```
git clone https://github.com/jkinred/prometheus-poc
cd prometheus-poc
sudo docker-compose up -d
sudo ./setup.sh
```

You should now have 3 containers running on your host and Grafana running on http://localhost:3000/.

### Configure Grafana

Login using admin/admin and add a Prometheus datasource pointing to http://prometheus:9090/ in proxy mode.

![Prometheus Datasource Configuration](datasource_config.png?raw=true)

Import Dashboards (*Menu -> Dashboard -> Import*) with these IDs:

* 1860 ([Node Exporter Full](https://grafana.com/dashboards/1860))
* 3662 ([Prometheus 2.0 Overview](https://grafana.com/dashboards/3662))

# TODO

* Automatically configure Prometheus as a datasource in Grafana
* Automatically import the dashboards
