# This SHOULD be in the terraform-bootstrap module.
# The reason it isn't is because aws_route does not yet support prefix lists for routes or VPC Endpoints as targets
# The only way to attach the VPC Endpoint to the route tables is to define the Endpoint with a list of route tables to self-attach to
# This means the VPC Endpoint needs to be defined within the dependency scope of the route tables.
# The endpoint has to depend on the tables, and resources in the bootstrap module must not depend downwards on resources in the environment module
# So for now, this is being defined here. The bootstrap modules public route table will be passed in as a variable so the VPC Endpoint can include it

resource "aws_vpc_endpoint" "s3" {
  vpc_id = "${var.vpc_id}"
  service_name = "com.amazonaws.${var.aws_region}.s3"
  route_table_ids = [
    "${var.bootstrap_public_route_table_id}",
    "${aws_route_table.public.id}",
    "${aws_route_table.private_nonat.id}",
    "${aws_route_table.private_nats.*.id}"
  ]
}
