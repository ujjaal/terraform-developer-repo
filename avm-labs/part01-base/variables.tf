variable "location" {
  type        = string
  description = "The location/region where the resources will be created"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources"
}

variable "environment" {
  type        = string
  description = "The deployment environment (dev, test, prod)"
}

