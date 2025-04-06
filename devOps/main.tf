resource "aws_s3_backet" "terraform_state" {
    backet = "terraform-state-file-book-aws"

    #prevent accidental deletion of the bucket
    lifecycle {
        prevent_destroy = true
    }

    resource "aws_s3_bucket_versioning" "versioning" {
        bucket = aws_s3_backet.terraform_state_file
        versioning_configuration {
            status = "Enabled"
        }
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "backet-encrypt" {
    bucket = aws_s3_backet.terraform_state_file

    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
    bucket = aws_s3_backet.terraform_state_file

    block_public_acls       = true
    ignore_public_acls      = true
    block_public_policy     = true
    restrict_public_buckets = true
}