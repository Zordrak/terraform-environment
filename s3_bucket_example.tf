resource "aws_s3_bucket" "example_x" {
  count         = "${replace(replace(var.bucket_name,"/.+/","1"),"/^$/","0")}"
  bucket        = "${var.bucket_name}"
  force_destroy = true
  policy        = "${data.template_file.example_bucket_policy.rendered}"
}
