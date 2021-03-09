# Sonarqube Metrics To Datadog

## Pre-requisite
### Docker Host Requirements
Set Linux recommended values for the current session by running the following commands as root on the host or using sudo:
`sudo sysctl -w vm.max_map_count=262144`
`sudo sysctl -w fs.file-max=65536`

### Create Datadog API Key
DD API key is passed to DD agent as env variables

### Create Sonarqube API Key
Run sonarqube and its DB container alone first to create sonarqube api key which is needed to be configured on conf.yml (sonarqube_api_token) for creating the custom DD agent in next step

### Build Datadog agent with custom conf.yaml for sonarqube
Dockerfile is available and updated conf.yaml is available. Provided
`docker build -t datadog:v1 .`

### Run docker compose
Run docker compose to run sonarqube, its DB and datadog agent.
`docker-compose up`
