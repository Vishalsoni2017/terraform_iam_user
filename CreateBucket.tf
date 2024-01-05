
resource "aws_s3_bucket" "bucket_test" {
    bucket =  "soni-12341233"
    tags = {
        Descriptions = "Testing purpose"
    }
}

resource "aws_s3_bucket_object" "adding_to_bucket" {
    bucket = aws_s3_bucket.bucket_test.id
    content = "/home/ec2-user/s3/index.html"
    key = "index.html"
}
