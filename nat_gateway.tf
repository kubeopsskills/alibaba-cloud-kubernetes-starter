resource "alicloud_eip_address" "nat_gateway_eip_a" {
  address_name      = var.eip_nat_name_a
  resource_group_id = alicloud_resource_manager_resource_group.resource_group.id
  isp               = "BGP"
  tags              = var.eip_nat_tags_a
}

resource "alicloud_eip_association" "nat_gateway_eip_a_association" {
  allocation_id = alicloud_eip_address.nat_gateway_eip_a.id
  instance_id   = alicloud_nat_gateway.nat_gateway_a.id
}

resource "alicloud_nat_gateway" "nat_gateway_a" {
  vpc_id              = alicloud_vpc.vpc.id
  nat_gateway_name    = var.nat_name_a
  nat_type            = "Enhanced"
  vswitch_id          = alicloud_vswitch.vswitch_public_a.id
  deletion_protection = true
  tags                = var.nat_tags_a
}

resource "alicloud_eip_address" "nat_gateway_eip_b" {
  address_name      = var.eip_nat_name_b
  resource_group_id = alicloud_resource_manager_resource_group.resource_group.id
  isp               = "BGP"
  tags              = var.eip_nat_tags_b
}

resource "alicloud_eip_association" "nat_gateway_eip_b_association" {
  allocation_id = alicloud_eip_address.nat_gateway_eip_b.id
  instance_id   = alicloud_nat_gateway.nat_gateway_b.id
}

resource "alicloud_nat_gateway" "nat_gateway_b" {
  vpc_id               = alicloud_vpc.vpc.id
  nat_gateway_name     = var.nat_name_b
  nat_type             = "Enhanced"
  internet_charge_type = "PayByLcu"
  vswitch_id           = alicloud_vswitch.vswitch_public_b.id
  deletion_protection  = true
  tags                 = var.nat_tags_b
}