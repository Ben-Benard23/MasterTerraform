#Day One#

# resource "aws_iam_user" "demo" {
#   name = "terraform_demo_user"
#   path = "/system/"

#   tags = {
#     tag-key = "terraform_demo_user"
#   }
# }

# resource "aws_iam_access_key" "demo_user_key" {
#   user = aws_iam_user.demo.name
# }

# data "aws_iam_policy_document" "demo_policy" {
#   statement {
#     effect    = "Allow"
#     actions   = ["ec2:Describe*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_user_policy" "demo_policy" {
#   name   = "ec2_test"
#   user   = aws_iam_user.demo.name
#   policy = data.aws_iam_policy_document.demo_policy.json
# }

#Day Two
resource "aws_iam_user" "demo" {
  name = var.aws_user_name
  path = "/system/"

  tags = var.iam_user_tag

}

resource "aws_vpc" "migration_vpc" {
  cidr_block = var.vpc_cider[0]


}

resource "aws_instance" "simon" {
  ami                         = var.instance_ami
  count                       = var.count_ec2
  instance_type               = var.ec2_instance_type[1]
  associate_public_ip_address = var.enable_public_ip
  availability_zone           = var.availability_zone[2]


}