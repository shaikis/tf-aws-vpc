variable "main_cidr" {
    type = string
}
variable "private_subnet_cidr" {
    type = string
}
variable "pub_subnet_cidr" {
    type = string
}

variable "vpc_name" {
    type = string
}
variable "vpc_environment_tag" {
   type = string
}
variable "vpc_product_tag" {
    type = string
}
variable "vpc_contact_tag" {
    type = string
}

