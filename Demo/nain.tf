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

""" Day """