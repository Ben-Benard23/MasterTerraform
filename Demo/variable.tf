

# resource "aws_iam_user" "demo" {
#   name = "terraform_demo_user"
#   path = "/system/"

#   tags = {
#     tag-key = "terraform_demo_user"
#   }
# }

variable "aws_user_name" {
  type        = string
  description = "iam user for migration"
  default     = "awa"
  sensitive   = false

}

variable "vpc_cider" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.0.2/24", "10.0.0.3/24"]

}
variable "iam_user_tag" {
  type = map(string)
  default = {
    "env"  = "Prod"
    "name" = "Awa"
  }

}

variable "count_ec2" {
  type    = number
  default = 2

}

variable "ec2_instance_type" {
  type    = list(string)
  default = ["t2.micro", "t2.small", "t2.nano"]

}

variable "instance_ami" {
  type = string
  default = "ami-0453ec754f44f9a4a"
  
}

variable "enable_public_ip" {
  type = bool
  default = true
  
}

variable "availability_zone" {
  type = list(string)
  default = [ "us_east-1a", "us-east-1b", "us-east-1c", "us-east-1d" ]
  
}