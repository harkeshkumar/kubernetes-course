variable "ami" {
   default = "ami-0a4a70bd98c6d6441"
}

variable "instance_type" {
    type = map(string)
    default = {
       dev = "t3a.nano"
       uat = "t3a.small"
    } 
}

variable "key_name" {
    default = "kubernetes-poc"
}
variable "volume_size" {
    default = 60
}