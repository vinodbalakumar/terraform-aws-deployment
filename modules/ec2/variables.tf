variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "security_group_ids" {
  type = list(string)
}
variable "user_data" {
  default = ""
}
variable "name" {}
variable "tags" {
  type    = map(string)
  default = {}
}