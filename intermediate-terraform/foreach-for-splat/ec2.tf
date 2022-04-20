resource "aws_instance" "this" {
  # this will create two instances
  # because of the for_each and each expressions
  for_each = {
    web = {
      name = "Web server"
      type = "t3.micro"
    }

    ci_cd = {
      name = "Web server"
      type = "t2.micro"
    }
  }


  ami = data.aws_ami.so.id

  instance_type = lookup(each.value, "type", null)

  tags = {
    Name = "${each.key}: ${lookup(each.value, "name", null)}"
  }
}