variable "application_name" { # Workload or Application Name
  description = "Name of the application or workload, which identifies the resource scope or project."
  type        = string
}

variable "environment" { # Environment: dev, prod, qa
  description = "The environment for the resource, e.g., dev, prod, qa."
  type        = string
}

variable "region_code" { # Region codes (e.g., 'eus' for East US)
  description = "Azure region short code, e.g., 'eus' for East US, 'wus' for West US."
  type        = string
}

variable "instance_number" { # Unique identifier or instance number for the resource
  description = "A unique number to identify the resource instance, default is '001'."
  type        = string
  default     = "001"
}

