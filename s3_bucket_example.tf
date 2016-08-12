data "template_file" "cloudtrail_bucket_policy" {
  template = "${file("${path.module}/templates/example_bucket_policy.json.tmpl")}"

  vars {
    bucket_name = "${var.example_bucket_name}"
  }
}

resource "aws_s3_bucket" "example" {
  bucket        = "${var.example_bucket_name}"
  force_destroy = true
  policy        = "${data.template_file.example_bucket_policy.rendered}"
}
