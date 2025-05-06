variable "region" {
  description = "Primary AWS region (not for ACM)"
  default     = "ap-southeast-2"
}

variable "site_domain" {
  description = "Domain name for the static site (e.g. lab.simostack.com)"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
}
