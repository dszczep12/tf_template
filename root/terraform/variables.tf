variable "gcp_credentials_file" {
    description = "Path to the GCP credentials file"
    type        = string
  }
  
  variable "gcp_project_id" {
    description = "The ID of the GCP project"
    type        = string
  }
  
  variable "gcp_region" {
    description = "The region to deploy resources in"
    type        = string
  }
  
  variable "gcp_zone" {
    description = "The zone to deploy resources in"
    type        = string
  }
  
  variable "instance_name" {
    description = "The name of the VM instance"
    type        = string
  }
  
  variable "machine_type" {
    description = "The machine type to use for the VM instance"
    type        = string
  }
  
  variable "boot_disk_image" {
    description = "The image to use for the boot disk"
    type        = string
  }
  
  variable "network" {
    description = "The network to attach the VM to"
    type        = string
  }
  
  variable "ssh_user" {
    description = "The SSH user name"
    type        = string
  }
  
  variable "ssh_public_key" {
    description = "The SSH public key"
    type        = string
  }
  