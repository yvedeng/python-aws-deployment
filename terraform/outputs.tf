# This file contains outputs to be passed to the shell during execution
# that are also made available to other modules at runtime.

output "alb_dns_name" {
  description = "The Application Load Balancer DNS name"
  value       = aws_lb.main.*.dns_name[0]
}