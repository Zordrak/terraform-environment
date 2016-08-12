resource "aws_s3_bucket" "example" {
  bucket        = "${var.example_bucket_name}"
  force_destroy = true
  policy        = "${data.template_file.example_bucket_policy.rendered}"
}
