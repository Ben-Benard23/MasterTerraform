
  
resource "aws_iam_user" "demo" {
  name = "terraform_demo_user"
  path = "/system/"

  tags = {
    tag-key = "terraform_demo_user"
  }
}

variable "aws_user_name" {
    type ="string"
    description = "iam user for migration"
    default = "awa"
    sensitive="False"

  
}