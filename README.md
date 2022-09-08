# AWS SNS -> Lambda subscription

An abstraction to make connecting a Lambda function to
an SNS topic straight-forward.

## Usage

```hcl
module "build" {
  source  = "glenngillen/aws-lambda-sns-subscription/module"
  version = "1.0.0"

  lambda_name = "my-function"
  lambda_arn  = "my-function::arn::goes::here"
  topic_arn   = "topic::arn::goes::here"
}
```