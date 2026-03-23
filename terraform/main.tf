resource "aws_security_group" "open_sg" {
  name = "open_sg"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # ❌ open to world
  }
}

resource "aws_s3_bucket" "public_bucket" {
  bucket = "my-public-bucket"

  acl = "public-read"   # ❌ insecure
}