module "s3_bucket_for_logs" {
 source = "terraform-aws-modules/s3-bucket/aws"
 bucket = "${var.company}-${var.environment}-logs"
 acl = "private"
}

module "s3_bucket_for_packages" {
 source = "terraform-aws-modules/s3-bucket/aws"
 bucket = "${var.company}-${var.environment}-packages"
 acl = "private"
}
