resource "aws_instance" "camilleec2" {
  ami = "ami-0c614dee691cbbf37"
  instance_type = "t2_micro"
  key_name = "Camille key pair"
  subnet_id = aws_subnet.subnet1.id
  security_groups = [ aws_security_group.camillesg.name]

    tags = {
      Name = "camilleec2"
    
    }
}