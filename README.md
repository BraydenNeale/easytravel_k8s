# Easy Travel Setup

## K8s cluster

## Install Dynatrace Operator

## Install EasyTravel
```
./scripts/create_easytravel.sh
./scripts/start_loadgen
```

# Monitoring Automation
Monitoring settings are automated through the use of [Dynatrace Monaco](https://github.com/dynatrace-oss/dynatrace-monitoring-as-code_). Here is a link to the official [Documenation](https://dynatrace-oss.github.io/dynatrace-monitoring-as-code/)

## Running Monaco
### Set Env variables:
Powershell
```
$ENV:NEW_CLI = 1
$ENV:DYNATRACE_URL = 'https://[ID].live.dynatrace.com'
$ENV:DYNATRACE_TOKEN = 'dtco1.****'
$ENV:EASYTRAVEL_EMAIL_CONTACTS = '"test@example.com", "hello@world.com"'
```

Bash
```
export NEW_CLI = 1
export DYNATRACE_URL = 'https://[ID].live.dynatrace.com'
export DYNATRACE_TOKEN = 'dtco1.****'
export EASYTRAVEL_EMAIL_CONTACTS = '"test@example.com", "hello@world.com"'
```

### Run Monaco
Specific Project e.g. easyTravel
```
monaco deploy -e environments.yaml -s dynatrace_tenant -p projects/PROJECT --dry-run
monaco deploy -e environments.yaml -s dynatrace_tenant -p projects/PROJECT
```

ALL projects
```
monaco deploy -e environments.yaml -s dynatrace_tenant -p projects --dry-run
monaco deploy -e environments.yaml -s dynatrace_tenant -p projects
```

### Delete config
Copy required delete config sections from `delete_backup.yaml` to a file called `delete.yaml`. Then run monaco

## Settings Created in Dynatrace
Using the Dynatrace Monitoring as code utility to create resources:
### Dashboards
### Management Zones
* General
    * Team: Infrastructure - All Hosts, k8s cluster
    * Team: Business - All Applications, synthetics
    * Environment: Prod - All production entities
* Applications
    * Application: Easytravel - easyTravel Dynatrace entitiesHosts
### Tagging rules
* K8s Annotations
    * contact
    * priority
    * tier
    * application
### Application Rules

### Alerting Profile

### Problem notifications

### Service Level Objectives - SLO