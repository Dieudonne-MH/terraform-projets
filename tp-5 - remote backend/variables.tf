variable "instancetype" {
  type        = string
  description = "set aws instance type"
  default     = "t2.nano"
}

variable "aws_common_tag" {
  type        = map(any)
  description = "Set aws tag"
  default = {
    Name = "ec2-helene"
  }
}
