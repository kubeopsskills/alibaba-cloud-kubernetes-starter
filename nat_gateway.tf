resource "alicloud_nat_gateway" "nat_gateway_a" {
  vpc_id              = alicloud_vpc.vpc.id
  specification       = var.nat_size
  nat_gateway_name    = var.nat_name_a
  nat_type            = "Enhanced"
  vswitch_id          = alicloud_vswitch.vswitch_public_a.id
  deletion_protection = true
  tags                = var.nat_tags_a
}

resource "alicloud_nat_gateway" "nat_gateway_b" {
  vpc_id              = alicloud_vpc.vpc.id
  specification       = var.nat_size
  nat_gateway_name    = var.nat_name_b
  nat_type            = "Enhanced"
  vswitch_id          = alicloud_vswitch.vswitch_public_b.id
  deletion_protection = true
  tags                = var.nat_tags_b
}