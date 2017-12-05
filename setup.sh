#!/bin/bash

echo "Copying prometheus configuration to container"
docker cp prometheus.yml prometheuspoc_prometheus_1:/etc/prometheus/prometheus.yml

echo "Sending SIGHUP to prometheus container"
docker kill --signal="SIGHUP" prometheuspoc_prometheus_1
