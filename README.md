Summary:
1. linked azure devops pipeline to github repo
2. created a static web app resource
3. grabbed the deployment token and added to deployment pipeline to deploy application

- The deployed page can be accessed via:
	https://red-coast-05a8c4e10.1.azurestaticapps.net/
- created src folder to hold html resources
- added api folder in case any scripts are added in the future

Improvements:
- choose static webapp resource for simplification and cost savings
- If application gets more complex, we can kubernetes for better scaling
- can also reserve kubernetes nodes for cost savings
- containerize the application if setup gets more complex and need to deploy to kubernetes

- can configure whatever custom domain we want under custom domains tab

- Reliability:
	- Create duplicate resource in diff geographical regions for high availablity
	- use traffic manager to direct web traffic

- add tags to add traceability and cost tracking
- add monitoring and log aggregation.  
	- currently since there are no scripts, no logs are generated.  As we add apis, we can enable application insights to gather these logs.

- additional branching/mapping to different environments (didnt want to do this as creating more environments potentially increases cost for the demo)
	- environments should be segregated for in terms of subscriptions, resource groups and vnets for security
- terraform the static app aservice resource as we require more environments
- integrate more complex testing tasks