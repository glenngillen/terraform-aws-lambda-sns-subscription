terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.1"
    }
  }
}

resource "aws_sns_topic_subscription" "this" {
 topic_arn = var.topic_arn
 protocol  = "lambda"
 endpoint  = var.lambda_arn
 tags      = var.tags
}

resource "aws_lambda_permission" "this" {
 statement_id  = "AllowExecutionFromSNS"
 action        = "lambda:InvokeFunction"
 function_name = var.lambda_name
 principal     = "sns.amazonaws.com"
 source_arn    = var.topic_arn
 tags          = var.tags
}