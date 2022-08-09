
resource "aws_ecr_repository" "image_registry" {
  name                 = "${var.ecr_name}-${var.env}"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}

/* module "ecr" {
  source               = "../../modules/ecr"
  image_tag_mutability = var.image_tag_mutability
  ecr_name = var.ecr_name
  env = var.env
} */

