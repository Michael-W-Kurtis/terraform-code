import {
  to = aws_instance.my_web_server_vm
  id = "i-0211ad1f62d42c9d8"
}

resource "aws_instance" "my_web_server_vm" {
  ami = ""
  instance_type = "t3.micro"
  disable_api_termination = true

  tags = {
    Name = "my-web-server"
  }
}
