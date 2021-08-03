resource "aws_s3_bucket_object" "object" {
  bucket = var.bucket
  key = ${var.company}-${var.environment}-${var.name}-${var.version}
  content = "I am ${var.name} version ${var.version}"
}
