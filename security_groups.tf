resource "aws_security_group" "core" {
  name        = "${var.environment}-${var.project}-CORE-SG"
  description = "${var.environment}-${var.project}-CORE-SG"
  vpc_id      = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-CORE-SG"
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "CORE"
    Role        = "CORE"
  }
}
