## Week 1 -  **Setup of environment**
 1. Learning about:
    - Cloud Computing
    - Virtual Machines
    - different Cloud providers
    - Shared Responsibility Model
    - API
    - Git
 2. Setting Git repository
 3. Interacting with Google Cloud API through Cloud Shell
 4. Installing Cloud SDK
 
## Goal of the task_1:

List enabled services in GCP using either Cloud Shell or Cloud SDK installed on a local machine. 

**How to:**
Check the  [GCP docs](https://cloud.google.com/sdk/gcloud/reference)  🔗 to get a command to list enabled services in your project.

**Result:**
The file **enabled_services.txt** contains the return of the command `gcloud sevices list --enabled` . The command `gcloud services list` also lists the same services, because the flag `--enabled` is the default.