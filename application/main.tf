resource "aws_s3_bucket_object" "self" {
  bucket = var.bucket
  key = "${var.company}-${var.environment}-${var.service_name}-${var.service_version}"
  content = "I am ${var.service_name} version ${var.service_version}"
}
