resource "aws_eip" "myeip" {
  vpc = "true"
  tags = {
    Name = "EIP-Backend-Teste"
  }
}