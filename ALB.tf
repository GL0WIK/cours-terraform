resource "aws_lb" "RMT_LoadBalancer" {
  name               = "RMT-LoadBalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.RMT_SG_LB.id]
  subnets            = [
    data.aws_subnet.az_1a.id,
    data.aws_subnet.az_1b.id,
    data.aws_subnet.az_1c.id
  ]

  tags = {
    Name = "RMT-LoadBalancer"
  }
}

resource "aws_lb_listener" "RMT_LoadBalancer_Listener" {
  load_balancer_arn = aws_lb.RMT_LoadBalancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.RMT_TargetGroup.arn
  }
}