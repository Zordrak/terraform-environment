resource "aws_s3_bucket" "example_x" {
  bucket        = "Example Bucket for use by Service X"
  force_destroy = true
  policy        = "${data.template_file.example_bucket_policy.rendered}"
}
