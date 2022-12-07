variable "amis" {
  type = map(string)
  default = {
      "us-east-1" = "ami-0022f774911c1d690"
      "us-east-2"  = "ami-0dd0ccab7e2801812"
  }
}

variable "cdirs_remote_access" {
  type = list(string)
  default = ["177.158.95.178/32"]
}

variable "key_name" {
  default = "terraform-aws"
}

variable "total_lambdas" {
  type = number
  default = 1
}

variable "arn_lambda_deploy" {
  default = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}