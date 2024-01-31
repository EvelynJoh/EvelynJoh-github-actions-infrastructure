resource "aws_s3_bucket" "this" {
   bucket = "my-website-bucket-techstarter"
   tags = {
    name        = "My lovely website"
    terraform   = "True"  
   }
}

resource "aws_s3_bucket_website_configuration" "this" {
    bucket = aws_s3_bucket.this.bucket

    index_document {
        suffix = "index.html"
    }

    error_document {
        key = "error.html"
    }
}

resource "aws_s3_bucket_public_access_block" "this" {
    bucket = aws_s3_bucket.this.bucket

    block_public_acls       =   false
    block_public_policy     =   false
    ignore_public_acls      =   false
    restrict_public_buckets =   false
}
