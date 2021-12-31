provider "aws" {
 #profile = "default"
  region  = "us-east-1"
  # Access_Key_id="AKIA3K3KIXVGMF6RZC7"
   #Secret_Access_Key="ouVWbehp1kvw5UdSLZT0PkSCtTUdeNMDYdiG6CNB"
}
terraform {
  backend "s3" {
    bucket = "myprem1"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}


/*terraform {
  backend "remote"{
     organization="prem-Terraform-Labs"
     Access_Key_id="AKIA3K3KIXVGMF6RZC7U"        
    Secret_Access_Key="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" 
workspaces{
         name= "premexample"
}
}
  
}*/
/* provider "aws" {
 #profile = "default"
  region  = "us-east-1"
    #Access_Key_id="AKIA3K3KIXVGMF6RZC7"
    #Secret_Access_Key="ouVWbehp1kvw5UdSLZT0PkSCtTUdeNMDYdiG6CNB"
}*/

resource "aws_instance" "app_server" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"

  tags = {
    Name =var.instance_name
  }
}
