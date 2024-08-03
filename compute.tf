# This code block allows us to create an ec2 instance with the use of variables
# To overwrite any one particular variable, we can pass the variable at runtime during terraform apply step
# e.g. terraform apply --var ec2_name="my-var-webserver"
resource "aws_instance" "sample_ec2_variables" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = data.aws_subnet.selected_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = var.ec2_name
  }
}