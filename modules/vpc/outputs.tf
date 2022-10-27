output "vpc_id" {
  value = aws_vpc.vpc-estudos.id
}

output "subnet_ids" {
  value = aws_subnet.subnets[*].id
}
