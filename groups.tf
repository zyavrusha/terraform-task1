# create group with name "DevOps"
resource "aws_iam_group" "DevOps" {
    name = "DevOps"
}

# add policy to the group
resource "aws_iam_group_policy_attachment" "attach_IAM_full_access" {
  group      = aws_iam_group.DevOps.name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

# create user 
resource "aws_iam_user" "devopsusr1" {
    name = "devopsusr1"
}

# add user to the group
resource "aws_iam_user_group_membership" "user_devops_group" {
    user = aws_iam_user.devopsusr1.name
    groups = aws_iam_group.DevOps.name
}