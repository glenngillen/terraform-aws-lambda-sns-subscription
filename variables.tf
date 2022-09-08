variable "lambda_name" {
  type = string
  description = "Name of lambda function"
}
variable "lambda_arn" {
  type = string
  description = "ARN of lambda function"
}
variable "topic_arn" {
  type = string
  description = "Topic to subscribe to"
}
variable "tags" {
  default = {}
}