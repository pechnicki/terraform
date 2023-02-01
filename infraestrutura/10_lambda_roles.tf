resource "aws_iam_role" "invoke_lambda" {
  name = "pechnicki-invoke-lambda-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "sts:AssumeRole",
      "Principal" : {
        "Service" : "lambda.amazonaws.com"
      },
      "Effect" : "Allow",
      "Sid" : ""
    }]
  })
}

resource "aws_iam_role_policy_attachment" "invoke_lambda_logs" {
  role       = aws_iam_role.invoke_lambda.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}

resource "aws_iam_role_policy_attachment" "invoke_lambda_invoke" {
  role       = aws_iam_role.invoke_lambda.name
  policy_arn = aws_iam_policy.invoke_lambda.arn
}

resource "aws_iam_role" "vpc_secrets" {
  name = "pechnicki-vpc-secrets-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "sts:AssumeRole",
      "Principal" : {
        "Service" : "lambda.amazonaws.com"
      },
      "Effect" : "Allow",
      "Sid" : ""
    }]
  })
}

resource "aws_iam_role_policy_attachment" "vpc_secrets_logs" {
  role       = aws_iam_role.vpc_secrets.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}

resource "aws_iam_role_policy_attachment" "vpc_secrets_vpc" {
  role       = aws_iam_role.vpc_secrets.name
  policy_arn = aws_iam_policy.vpc.arn
}

resource "aws_iam_role_policy_attachment" "vpc_secrets_ssm" {
  role       = aws_iam_role.vpc_secrets.name
  policy_arn = aws_iam_policy.secrets.arn
}

resource "aws_iam_role" "vpc" {
  name = "pechnicki-vpc-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "sts:AssumeRole",
      "Principal" : {
        "Service" : "lambda.amazonaws.com"
      },
      "Effect" : "Allow",
      "Sid" : ""
    }]
  })
}

resource "aws_iam_role_policy_attachment" "vpc_logs" {
  role       = aws_iam_role.vpc.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}

resource "aws_iam_role_policy_attachment" "vpc_vpc" {
  role       = aws_iam_role.vpc.name
  policy_arn = aws_iam_policy.vpc.arn
}

resource "aws_iam_role" "secrets" {
  name = "pechnicki-secrets-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "sts:AssumeRole",
      "Principal" : {
        "Service" : "lambda.amazonaws.com"
      },
      "Effect" : "Allow",
      "Sid" : ""
    }]
  })
}

resource "aws_iam_role_policy_attachment" "secrets_logs" {
  role       = aws_iam_role.secrets.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}

resource "aws_iam_role_policy_attachment" "secrets_secrets" {
  role       = aws_iam_role.secrets.name
  policy_arn = aws_iam_policy.secrets.arn
}
