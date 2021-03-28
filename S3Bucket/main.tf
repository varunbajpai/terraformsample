provider "aws" {
  region     = "ap-south-1"
  profile    = "varunbajpai22"
}

//
//resource "aws_s3_bucket" "mybucket" {
//  bucket = "mybucket-tfcourse"
//  acl    = "private"
//
//  tags = {
//    Environment = "dev"
//  }
//}
//
//
//resource "aws_s3_bucket_object" "mybucketobject" {
//  bucket = "${aws_s3_bucket.mybucket.id}"
//  key    = "testfile.txt"
//  source = "/Users/vbajpai/Downloads/WorkSpace/learningterraform/abc.txt"
//  etag = filemd5("/Users/vbajpai/Downloads/WorkSpace/learningterraform/abc.txt")
//}