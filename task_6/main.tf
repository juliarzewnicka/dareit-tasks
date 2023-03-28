provider "google" {
  project = "golden-union-377614"
  region  = "europe-central2"
  zone    = "europe-central2-a"
}

resource "google_compute_instance" "default" {
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

resource "google_storage_default_object_access_control" "public_rule" {
  bucket = google_storage_bucket.bucket.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket" "bucket" {
  name     = "dareit-bucket-jrz"
  location = "US"
}

resource "google_sql_database_instance" "instance" {
name = "dareit-jrz-database-instance"
database_version = "POSTGRES_14"
settings {
tier = "db-f1-micro"
}
}
resource "google_sql_database" "database" {
name = "dareit"
instance = "${google_sql_database_instance.instance.name}"
}
resource "google_sql_user" "users" {
name = "dareit_user"
instance = "${google_sql_database_instance.instance.name}"
password = "*****"
}