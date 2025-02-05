resource "aws_vpc" "vpccamille" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpccamille"
  }

}
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpccamille.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet1"
  }
}