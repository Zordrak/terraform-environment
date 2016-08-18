# resource "aws_security_group_rule" "pubtest_to_pritest_tcp_80_egress" {
#   type                     = "egress"
#   protocol                 = "tcp"
#   from_port                = 80
#   to_port                  = 80
#   security_group_id        = "${module.microservice_pubtest.security_group_id}"
#   source_security_group_id = "${module.microservice_pritest.security_group_id}"
# }

# resource "aws_security_group_rule" "pubtest_to_pritest_tcp_80_ingress" {
#   type                     = "ingress"
#   protocol                 = "tcp"
#   from_port                = 80
#   to_port                  = 80
#   source_security_group_id = "${module.microservice_pubtest.security_group_id}"
#   security_group_id        = "${module.microservice_pritest.security_group_id}"
# }

# resource "aws_security_group_rule" "core_to_s3-vpce_egress" {
#   type              = "egress"
#   protocol          = "tcp"
#   from_port         = 443
#   to_port           = 443
#   prefix_list_ids   = ["${aws_vpc_endpoint.s3.prefix_list_id}"]
#   security_group_id = "${aws_security_group.core.id}"
# }
