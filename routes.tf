resource "aws_route" "public_default" {
  route_table_id         = "${aws_route_table.public.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${var.internet_gateway_id}"
}

resource "aws_route" "public_peers" {
  count                     = "${length(var.peer_matrix)}"
  route_table_id            = "${aws_route_table.public.id}"
  destination_cidr_block    = "${element(split(",", element(var.peer_matrix, count.index)), 2)}"
  vpc_peering_connection_id = "${var.peering_connections[count.index]}"
}
