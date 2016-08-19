data "aws_availability_zones" "available" {}

data "template_file" "example_bucket_policy" {
  count    = "${replace(replace(var.bucket_name,"/.+/","1"),"/^$/","0")}"
  template = "${file("${path.module}/templates/example_bucket_policy.json.tmpl")}"

  vars {
    bucket_name = "${var.bucket_name}"
  }
}
