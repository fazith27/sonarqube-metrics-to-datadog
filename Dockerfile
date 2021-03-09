FROM datadog/agent:latest-jmx
RUN apt-get update && apt-get install vim -y
COPY conf.yaml conf.d/sonarqube.d/