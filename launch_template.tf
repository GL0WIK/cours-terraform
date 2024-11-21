resource "aws_launch_template" "RMT_LaunchTemplate" {
  name          = "RMT-LaunchTemplate"
  instance_type = "t2.micro"
  image_id      = "ami-0f6173d12e749273a" # Remplacez par l'AMI correcte

  key_name = "RMT-KeyPair" # Facultatif, si SSH est nécessaire

  network_interfaces {
    associate_public_ip_address = true
    security_groups = [aws_security_group.RMT_SG_EC2.id] # Référence au SG créé
  }
}