resource "aws_key_pair" "module-keypair" {
  key_name   = "module_keypair"
  public_key = "${var.key}" 
}


resource "aws_instance" "web-instance" {
          ami = "${var.image_id}"
    instance_type = "t2.micro"
     key_name =  aws_key_pair.module-keypair.key_name
tags = {
   name = "module-instance"
}

}

