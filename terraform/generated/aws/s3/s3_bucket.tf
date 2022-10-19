resource "aws_s3_bucket" "tfer--338991950301gg-dev-payloads" {
  arn           = "arn:aws:s3:::338991950301gg-dev-payloads"
  bucket        = "338991950301gg-dev-payloads"
  force_destroy = "false"

  grant {
    id          = "65e58cbc5ae1e7072a90ed135c44dc88772b5ba3a8534422851ad8f5e35c7d12"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  hosted_zone_id      = "Z2O1EMRO9K5GLX"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
