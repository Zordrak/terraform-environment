resource "aws_route_table" "private_nats" {
  count = "${var.region_az_count}"

  vpc_id = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-PRI-NAT-RT"
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PRI"
  }
}

resource "aws_route_table" "private_nonat" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-PRI-NONAT-RT"
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PRI"
  }
}

resource "aws_route_table" "public" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}-${var.project}-PUB-RT"
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PUB"
  }
}
