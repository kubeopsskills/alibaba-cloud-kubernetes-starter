provider "alicloud" {
}

terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "~>1.136.0"
    }
  }
}