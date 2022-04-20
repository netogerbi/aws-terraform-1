resource "aws_instance" "web" {
  ami = data.aws_ami.so.id

  instance_type = var.instance_type
}