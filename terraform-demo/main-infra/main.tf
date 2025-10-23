# Simple demo infrastructure
resource "aws_s3_bucket" "demo" {
  bucket = "${var.project_name}-bucket-${random_id.rand.hex}"
  force_destroy = true
}

resource "random_id" "rand" {
  byte_length = 4
}

resource "aws_instance" "demo_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  tags = {
    Name = "${var.project_name}-ec2"
  }
}
