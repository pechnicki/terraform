resource "aws_kms_key" "kms_key" {
  description              = var.kms_description
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
}

resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.kms_name}"
  target_key_id = aws_kms_key.kms_key.key_id
}
