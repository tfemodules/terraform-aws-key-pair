variable "key_name" {
  type        = string
  description = "Name of the AWS key pair to be created."
}

variable "public_key" {
  type        = string
  description = "Public key to use for the AWS key pair creation. If not provided a new TLS public/private key pair will be generated."
  default     = ""
}

variable "common_tags" {
  type        = map(string)
  description = "Tags to apply to all resources."
  default     = {}
}
