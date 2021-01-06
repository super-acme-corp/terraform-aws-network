# VPC

output "vpc_id" {
  description = "The identifier for the provisioned VPC"
  value       = aws_vpc.main.id
}

output "vpc_private_subnets" {
  description = "Ids for the internal (private) subnets"
  value       = aws_subnet.private.*.id
}

output "vpc_public_subnets" {
  description = "Ids for the external (public) subnets"
  value       = aws_subnet.public.*.id
}

# Route 53

output "dns_zone_id" {
  description = "The DNS zone ID for the hosted zone"
  value = data.aws_route53_zone.selected.zone_id
}