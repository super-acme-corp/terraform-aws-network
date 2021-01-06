variable "aws_region" {
  default     = "eu-west-1"
  description = "The AWS region to deploy to"
}

variable "dns_zone_name" {
  description = "The apex zone name to make available"
}

variable "network_name" {
  description = "The name to identify the VPC and prefix for a load balancer"
  type        = string
}

variable "az_count" {
  default     = 2
  description = "Number of availability zones to use within the region"
}
