variable "region" {
  type        = string
  default     = ""
}

variable "create_vpc" {
description = "about vpc"
  type        = bool
  default     = true
}

variable "cidr" {
  description = "about cidr"
  type        = string
  default     = "0.0.0.0/0"
}

variable "default_security_group" {
  type        = bool
  default     = false
}

variable "default_security_group_ingress" {
  type        = list(map(string))
  default = [{
    "key" = "value"
  }]
}
variable "default_security_group_egress" {
    type        = list(map(string))
  default     = []
}

variable "public_subnets" {
    type        = list(string)
  default     = []
}

variable "private_subnets" {
    type        = list(string)
  default     = []
}

variable "create_flow_log_cloudwatch_log_group" {
    type        = bool
  default     = false
}

variable "create_flow_log_cloudwatch_iam_role" {
    type        = bool
  default     = false
}
