terraform {
  backend "s3" {
    bucket         = "s3-bucket-apse1-dev-terraform-sandboxes"    # Replace with your actual S3 bucket name
    key            = "terraform.tfstate"         # Path to the state file within the bucket
    region         = "ap-southeast-1"            # Same region as in your provider configuration
    encrypt        = true                        # Enable server-side encryption
    dynamodb_table = "terraform-lock"            # Optional: for state locking (requires creating this DynamoDB table)
  }
} 