resource "aws_s3_bucket" "bucket" {
  for_each      = toset(var.s3_buckets)
  bucket        = each.value
  force_destroy = true
}

resource "aws_s3_bucket_acl" "acl" {
  for_each = toset(var.s3_buckets)
  bucket   = aws_s3_bucket.bucket[each.value].id
  acl      = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
  for_each = toset(var.s3_buckets)
  bucket   = aws_s3_bucket.bucket[each.value].id
  versioning_configuration {
    status = "Disabled"
  }
}
