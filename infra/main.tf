# LIM-46535 acceptance fixture: intentionally misconfigured, never applied.
resource "aws_s3_bucket" "fixture" {
  bucket = "lim-46535-acceptance-fixture"
  acl    = "public-read-write"
}

resource "aws_security_group" "fixture" {
  name = "lim-46535-acceptance-fixture"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_ebs_volume" "fixture" {
  availability_zone = "us-east-1a"
  size              = 8
  encrypted         = false
}
