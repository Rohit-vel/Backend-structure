module "mywebmodule" {
  source        = "./module/webserver"
  image_id      = var.image_id
  instance_type = "t2.micro"
  key           = file("${path.module}/id_rsa.pub")
  key_name      = var.key_name

}

output "publicIP" {
  value = module.mywebmodule.publicIP

}
