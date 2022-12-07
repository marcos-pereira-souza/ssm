provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_automacao_oq6" {
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name = var.key_name
  vpc_security_group_ids = ["${aws_security_group.access_ssh.id}"]
  tags = {
    "Name" = "EC2-OQ6-Microautomacao-SSM"
    "Tipo" = "Automacao-OQ6"
  }

  user_data = <<EOT
#!/bin/bash
echo "Starting User Data"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

EOT

}


resource "aws_resourcegroups_group" "resourcegroup_automacao_oq6" {
  name = "Automacao-OQ6"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::EC2::Instance"
  ],
  "TagFilters": [
    {
      "Key": "Tipo",
      "Values": ["Automacao-OQ6"]
    }
  ]
}
JSON
  }
}