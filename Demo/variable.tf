
  
# resource "aws_iam_user" "demo" {
#   name = "terraform_demo_user"
#   path = "/system/"

#   tags = {
#     tag-key = "terraform_demo_user"
#   }
# }

variable "aws_user_name" {
    type =string
    description = "iam user for migration"
    default = "awa"
    sensitive= false

}

variable "vpc_cider" {
  type = list(string)
  default = [ "10.0.0.0/24", "10.0.0.2/24", "10.0.0.3/24" ]
  
}
variable "iam_user_tag" {
  type = map(string)
  default = {
    "env" = "Prod"
    "name" = "Awa"
  }
  
}