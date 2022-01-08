provider "aws" {
 #profile = "default"
  region  = "us-east-1"
  
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
    
workspaces{
         name= "premexample"
}
}
  
}*/
/* provider "aws" {
 #profile = "default"
  region  = "us-east-1"
    
}*/

resource "aws_instance" "app_server" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"

  tags = {
    Name =var.instance_name
  }
}
