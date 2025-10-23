output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "ec2_instance_id" {
  value = aws_instance.demo_ec2.id
}
