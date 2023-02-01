resource "aws_iam_policy" "lambda_logging" {
  name        = "pechnicki-lambda-logging-policy"
  path        = "/"
  description = "IAM policy for logging from a lambda"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        "Resource" : "arn:aws:logs:*:*:*",
        "Effect" : "Allow"
      }
    ]
  })
}

resource "aws_iam_policy" "invoke_lambda" {
  name        = "pechnicki-invoke-lambda-policy"
  path        = "/"
  description = "Politica IAM para invocar outras funcoes lambda"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : ["lambda:InvokeFunction"],
        "Resource" : ["arn:aws:lambda:${var.aws_region}:${data.aws_caller_identity.current.account_id}:function:*"],
        "Effect" : "Allow"
      }
    ]
  })
}

resource "aws_iam_policy" "vpc" {
  name        = "pechnicki-vpc-policy"
  path        = "/"
  description = "Politica IAM para modificacao de acesso a vpc de uma lambda"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "ec2:CreateNetworkInterface",
          "ec2:DescribeNetworkInterfaces",
          "ec2:DeleteNetworkInterface"
        ],
        "Resource" : "*",
        "Effect" : "Allow"
      }
    ]
  })
}

resource "aws_iam_policy" "secrets" {
  name        = "pechnicki-secrets-policy"
  path        = "/"
  description = "Politica IAM para acesso a Secrets"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "secretsmanager:GetSecretValue",
          "kms:Decrypt",
          "ssm:GetParameters",
          "ssm:GetParameter"
        ],
        "Resource" : [
          "arn:aws:secretsmanager:*:${data.aws_caller_identity.current.account_id}:secret:*",
          "arn:aws:kms:*:${data.aws_caller_identity.current.account_id}:key/*",
          "arn:aws:ssm:*:${data.aws_caller_identity.current.account_id}:parameter/*"
        ],
        "Effect" : "Allow"
      }
    ]
  })
}

