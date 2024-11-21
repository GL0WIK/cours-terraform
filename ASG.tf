resource "aws_autoscaling_group" "RMT_ASG" {
  name                      = "RMT-AutoScalingGroup"
  max_size                  = 5
  min_size                  = 1
  desired_capacity          = 2
  vpc_zone_identifier       = [data.aws_subnet.az_1a.id, data.aws_subnet.az_1b.id, data.aws_subnet.az_1c.id]
  target_group_arns         = [aws_lb_target_group.RMT_TargetGroup.arn]

  launch_template {
    id      = aws_launch_template.RMT_LaunchTemplate.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "RMT-EC2-Instance"
    propagate_at_launch = true
  }
}