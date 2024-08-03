# Create AWS S3
resource "aws_s3_bucket" "luqman" {
  # Change to a unique name
  bucket = var.s3bucketname

  tags = {
    Name        = var.s3bucketname
    Environment = var.env
    Department  = var.department }
}