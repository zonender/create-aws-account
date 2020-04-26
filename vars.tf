variable "myvar1" {
  type = string
  default = "hello world 1"
}

variable "myvar2" {
  type = string
  default = "hello world 2"
}

variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-13be557e"
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