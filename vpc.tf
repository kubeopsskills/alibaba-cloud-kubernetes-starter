resource "alicloud_vpc" "vpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr
  resource_group_id = alicloud_resource_manager_resource_group.resource_group.id
  tags              = var.vpc_tags
}