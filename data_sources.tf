data "aws_availability_zones" "available" {}

data "template_file" "example_bucket_policy" {
  template = "${file("${path.module}/templates/example_bucket_policy.json.tmpl")}"

  vars {
    bucket_name = "${var.example_bucket_name}"
  }
}
