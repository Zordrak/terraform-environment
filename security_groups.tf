resource "aws_security_group_rule" "pubtest_to_pritest_tcp_80_egress" {
  type                     = "egress"
  protocol                 = "tcp"
  from_port                = 80
  to_port                  = 80
  security_group_id        = "${module.microservice_pubtest.security_group_id}"
  source_security_group_id = "${module.microservice_pritest.security_group_id}"
}

resource "aws_security_group_rule" "pubtest_to_pritest_tcp_80_ingress" {
  type                     = "ingress"
  protocol                 = "tcp"
  from_port                = 80
  to_port                  = 80
  source_security_group_id = "${module.microservice_pubtest.security_group_id}"
  security_group_id        = "${module.microservice_pritest.security_group_id}"
}
