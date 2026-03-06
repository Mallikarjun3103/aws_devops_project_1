resource "aws_instance" "web" {

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  user_data = <<EOF
#!/bin/bash
yum install httpd -y
systemctl start httpd
echo "Terraform Modular Project" > /var/www/html/index.html
EOF

}
