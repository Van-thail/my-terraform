variable "environment" {
  type    = string
  default = "production"
}

#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo '<center><h1>This is Jenkins!</h1></center>' > /var/www/html/index.html
