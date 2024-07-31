output "instance_name" {
    description = "The name of the VM instance"
    value       = google_compute_instance.default.name
  }
  
  