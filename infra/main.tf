module "s3-website" {
  source       = "./modules/s3-website"
  bucket_arn   = "arn:aws:s3:::my-website-bucket-techstarter"
}
