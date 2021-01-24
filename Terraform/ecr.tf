#resource "aws_ecr_repository" "foo" {
#  name                 = "kubernetes-project"
#  image_tag_mutability = "MUTABLE"
#
#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}
#
#output "ecr_arn" {
#  value = aws_ecr_repository.foo.arn
#}
#
#output "registry_id" {
#  value = aws_ecr_repository.foo.registry_id
#}