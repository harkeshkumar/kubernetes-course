modules "ec2_instance_web" {
    source = "modules/ec2"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace,"t3a.nano")
    key_name = "kubernetes-poc"
    volume_size = var.volume_size
}

modules "ec2_instance_web" {
    source = "modules/ec2"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace,"t3a.nano")
    key_name = "kubernetes-poc"
    volume_size = var.volume_size
}



resource "aws_eip" "ec2" {
  instance = aws_instance.web.id
  vpc      = true
}