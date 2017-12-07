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
```

You should now have 3 containers running on your host and Grafana running on http://localhost:3000/.

### Import Grafana Dashboards

Import Dashboards (*Menu -> Dashboard -> Import*) with these IDs:

* 1860 ([Node Exporter Full](https://grafana.com/dashboards/1860))
* 3662 ([Prometheus 2.0 Overview](https://grafana.com/dashboards/3662))

# TODO

* Automatically import the dashboards
