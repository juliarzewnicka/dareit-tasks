## Week 4 -  **Create Virtual Machine**

1. Learning about:
    - Compute Engine
    - Computer Network
    - MAC adress
    - bandwidth
    - router, routing and routing protocols
    - IP adress
    - Enthernet and WIFI
    - web server
    - Apache - web server software
    - VPC Network
    - alerting in Cloud Monitoring
 
## Goal of the task_4:

The goal of the task is to create a Virtual Machine

**How to:**
1. Create VM Instance in the Compute engine section of GCP.
2.  Choose e2-small instance type, allow HTTP and HTTPS and add dareit-public network tag.
3. After creating VM instance use SSH to connect to server.
4. Get information package and install Apache Web server by running code:
```
   sudo apt update && sudo apt -y install apache2
```
5. Check Apache server with code:
```
sudo systemctl status apache2
```
6. Remove the preconfigured index.html file and add our own index.html file by:
	- changing directory in which we are
	- removing index.html
	- creating index.html file
	- inserting our own code using vim
```
cd /var/www/html/
```

```
sudo rm index.html
```
```
sudo vim index.html
```
```
<!DOCTYPE html>
<html>
  <head>
    <title>Hello World: Static Website</title>
  </head>
  <body>
    <h1>I am hosted on a VM in GCP.</h1>
    <p>DareIT rocks!</p>
  </body>
</html>
```
**Result:**
An External IP\* adress of the VM with Apache web server hosting HTML website. 
\*Not included due to security reasons