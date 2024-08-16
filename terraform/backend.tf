terraform {
    backend "s3" {
        bucket = "sock-shop"
        key = "eks-cluster/terraform.tfstate"
        region = "us-east-1"
      
    }
}