## Week 7 -  **CI/CD**

1. Learning about:
    - CI/CD - continuous integration and continuous deployment
    - GitHub Actions
    - other platforms for CI/CD  
	    -   Gitlab
		-   Azure DevOps
		-   Jenkins
		-   CircleCI
 
## Goal of the task_7:

The goal of the task is to create a CI/CD pipeline using GitHub Actions.

**How to:**

1.  Create a Service Account for Terraform in GCP (for the Role choose Editor) and generate a JSON key.
2.  Create a bucket in which we will store the terraform state file (do not grant public access to this bucket.).
3.  Create a new repository in GitHub (dareit-task-terraform) and create a new repository secret with JSON key.
4.  Put prepared code into created files: backend.tf, [provider.tf](http://provider.tf/) and main.tf.
5. Create file (using prepared code) with the definition of the pipeline - .github/workflows/terraform.yml
6.  Commit files to the repository, push the change to the remote repository and check "Actions" tab.
7.  Check if it worked.
8.  Modify the workflow (the job should only be triggered whenever a new pull request is opened) from:
```
on:
  push:
    branches:
    - main
```
to:
```
on:
  pull_request:
	types:
	  - opened
 ```
10.  Create a branch called feat/add-bucket.
11.  On the branch, modify the code of the main.tf to add a new bucket.
12.  Open a pull request.

**Result:**
https://github.com/juliarzewnicka/dareit-task-terraform
