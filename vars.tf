
###########################################################################
######################### VPC VARS
###########################################################################

variable "vpc_name" {
  type = string
  description = ""
  default = ""
}

variable "vpc_cidr_block" {
  type = string
  description = "VPCs IP range"
  default = ""
}

variable "env" {
  type = string
  description = "The environment for this configuration"
  default = ""
}

######################### SUBNET1 VARS

variable "subnet1_cidr_block" {
  type = string
  description = "Subnet1 IP range"
  default = ""
}

variable "subnet1_function" {
  type = string
  description = ""
  default = ""
}

######################### SUBNET2 VARS

variable "subnet2_cidr_block" {
  type = string
  description = "Subnet2 IP range"
  default = ""
}

variable "subnet2_function" {
  type = string
  description = ""
  default = ""
}


###########################################################################
######################### EC2 VARS
###########################################################################

# variable "key_name" {
#     description = "Name of the SSH keypair to use in AWS."
# }

# variable "key_path" {
#     description = "Path to the private portion of the SSH key specified."
# }

variable "EC2_SUBNET" {
  type = string
  default = ""
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-00068cd7555f543d5"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
  }
}

variable "mylist" {
    type = list
    default = [
        1,
        "two",
        3,
        "four"
    ]
}

locals {
  subnet1_name = "${var.subnet1_function}-${var.env}"
  subnet2_name = "${var.subnet2_function}-${var.env}"
}

# comment

// commment

/*
multi line comment
*/