resource "aws_s3_bucket" "bucket1" {
    count=2
    tags = {
        name="test-bucket-${count.index}"
        }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "example-bucket"
}
 
resource "aws_s3_bucket_acl" "bucket1" {
  bucket = aws_s3_bucket.bucket1.id
  acl    = "private"
}
 
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}
