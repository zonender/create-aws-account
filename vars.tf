

###########################################################################
######################### VPC VARS
###########################################################################

variable "EC2_SUBNET" {
  type = string
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

# comment

// commment

/*
multi line comment
*/