resource "aws_iam_user" "dad" {
  name = "dadman"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "dad" {
  user = aws_iam_user.dad.name
}

data "aws_iam_policy_document" "dad_ro" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "dad_ro" {
  name   = "test"
  user   = aws_iam_user.dad.name
  policy = data.aws_iam_policy_document.dad_ro.json
}

