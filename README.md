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
* Dashboards
* Management Zones
* Tagging rules
* Application detection rules
