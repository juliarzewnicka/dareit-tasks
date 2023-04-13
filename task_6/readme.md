https://storage.googleapis.com/dareit-bucket-jrz/index.html## Week 6 -  **Infrastructure as a Code**

1. Learning about:
    - Terraform
    - Infrastructure as Code (IaC)
    - Configuration Management
    - Ansible
    - state file (JSON)
    - structuring terraform files
 
## Goal of the task_6:

The goal of the task is to automate the creation and management of resources in the Google Cloud Platform.

**How to:**
1. Create main.tf in Cloud Shell using vim.
2. Insert code:
```
provider "google" {
  project = "YOUR GCP PROJECT"
  region  = "us-central1"
  zone    = "us-central1-c"
}  


resource "google_compute_instance" "dare-id-vm" {
  name         = "dareit-vm-tf"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
```
3. Run `terrafrom init` in Cloud Shell. Check the output by running `terraform plan`. Then run `terraform apply` and enter a value `yes`.
4. Delete the block describing the resource _"google_compute_instance"_ from the main.tf and run `terraform plan` and `terraform apply` to delete the resource.
5. Now in the main.tf insert configuration to create:
	- Cloud Storage bucket that has public access configured (with manually uploaded index.html file)
	- Compute Instance
	- Cloud SQL instance with Postgres engine - create database called  _dareit_  and a user called  _dareit_user_

**Result:**
The file main.tf contains terraform code with three resouces created: CS bucket, VM and SQL instance. 
The URL of the object (index.htm) from created bucket https://storage.googleapis.com/dareit-bucket-jrz/index.html