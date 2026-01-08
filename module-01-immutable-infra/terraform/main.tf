provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_node" {
  # 1. The OS Image (AMI)
  ami = "REPLACE_ME_AMI_ID" 
  
  # 2. The Hardware Size
  instance_type = "t2.micro"
  
  # 3. The Access Key
  key_name = "REPLACE_ME_KEY_NAME"
  
  # 4. The Network Location (Subnet)
  subnet_id = "REPLACE_ME_SUBNET_ID"
  
  # 5. The Firewall (Security Group)
  vpc_security_group_ids = ["REPLACE_ME_SG_ID"]

  tags = {
    Name = "Vanguard-Lab-Node"
  }
}
