# Installing
`./scripts/create_easytravel.sh`
`./scripts/start_loadgen`

# Configuration
* Add your Dynatrace tenant to **tenants.yaml**: https://[DT_TENANT_ID].live.dynatrace.com
* `set DYNATRACE_TENANT_TOKEN=<YOUR TOKEN>`
* Validate monitoring config: 
    `self-monitoring-1.2.1.exe -tenants="tenants.yaml" -dry-run`
* Push All Projects Config to all Tenants: 
    `self-monitoring-1.2.1.exe -tenants="tenants.yaml"`

Using the Dynatrace Monitoring as code utility to create resources:
### Dashboards
* Monitoring as code example
* Easytravel application overview
### Management Zones
* Infrastructure
    * Host
    * K8s cluster
* Business
    * Application
* Easytravel
    * Hosts, Services, Processes, Applications
### Tagging rules
* K8s Annotations
    * contact
    * priority
    * tier
    * app
### Application
* Detection rules - easytravel host/domain
* Configuration
### Alerting Profile
* Tier: Frontend, Backend
* Smartscape: Infra, Service, Application
* Auto remediation: Specific problem type and tags
### Problem notifications
* Emails for each alerting profile
### Kubernetes API Integration
* Connecting an ActiveGate to the K8s API
