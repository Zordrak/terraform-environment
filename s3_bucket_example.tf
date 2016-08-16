resource "aws_s3_bucket" "example" {
  count         = "${replace(replace(var.example_bucket_name,"/.+/","1"),"/^$/","0")}"
  bucket        = "${var.example_bucket_name}"
  force_destroy = true
  policy        = "${data.template_file.example_bucket_policy.rendered}"
}
