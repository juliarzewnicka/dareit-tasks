## Week 2 -  **Static website**

1. Learning about:
    - Cloud Storage
    - Cloud IAM 
    - HTML
    - Conventional commits
    - Buckets
    - Service accounts
    - Google Cloud Developer Architecture
    - Google Cloud Pricing Calculator
   
2. Interacting with IAM and Admin permissions
 
## Goal of the task_2:

The goal of the task is to host a static website in a GCS bucket. 

**How to:**
1. Create a bucket in Google cloud.
2. Create file called **_index.html_** with the following code:
```
<!DOCTYPE html>
<html>
  <head>
    <title>Hello World: Static Website</title>
  </head>
  <body>
    <h1>I am hosted on a bucket in GCP.</h1>
    <p>DareIT rocks!</p>
  </body>
</html>
```
3. Upload the index.html file to the bucket.
4. Amend permissions of the bucket. In the New principals write _allUsers_. Choose a role called _Storage Object Viewer_.

**Result:**
The file **website_url.txt** contains the url to the static website with public acess hosted on GCP bucket.