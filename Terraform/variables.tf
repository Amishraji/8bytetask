variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "Public subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name for the AWS key pair to create"
  type        = string
}

variable "key_path" {
  description = "Path to your private SSH key (for connecting to EC2 instance)"
  type        = string
  default     = "C:\\Users\\ankus\\Downloads\\8bytetaskkey.pem"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed for SSH (default: your IP or 0.0.0.0/0)"
  type        = string
  default     = "0.0.0.0/0"
}
