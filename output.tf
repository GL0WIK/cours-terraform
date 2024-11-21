output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.RMT_LoadBalancer.dns_name
}

output "asg_name" {
  description = "The name of the Auto Scaling Group"
  value       = aws_autoscaling_group.RMT_ASG.name
}