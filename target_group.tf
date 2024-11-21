resource "aws_lb_target_group" "RMT_TargetGroup" {
  name        = "RMT-TargetGroup"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = data.aws_vpc.default.id
  target_type = "instance"
  protocol_version = "HTTP1"

  tags = {
    Name = "RMT-TargetGroup"
  }
}