resource "aws_route_table" "private_nats" {
  # https://github.com/hashicorp/terraform/issues/1497
  #count = "${length(data.aws_availability_zones.available.names)}"
  count = 3

  vpc_id = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PRI"
  }
}

resource "aws_route_table" "private_nonat" {
  vpc_id = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PRI"
  }
}

resource "aws_route_table" "public" {
  vpc_id = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PUB"
  }
}
