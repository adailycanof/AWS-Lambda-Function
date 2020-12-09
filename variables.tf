#variable "default_tags"{
#    type        = map(string)
#    description = "adcox3-bucket-tag"
#}

variable "function_name" {
  type    = string
  default = "func-name"
}

variable "versioning" {
  default = true
}

variable "lambda_zip_location" {
  type    = string
  default = "outputs/welcome.zip"
}

variable "runtime" {
  type    = string
  default = ""
}
