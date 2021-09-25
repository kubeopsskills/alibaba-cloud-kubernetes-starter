# Route Table
resource "alicloud_route_table" "route_table_a" {
  vpc_id           = alicloud_vpc.vpc.id
  route_table_name = var.route_table_name_a
  tags             = var.route_table_tags_a
}

resource "alicloud_route_table" "route_table_b" {
  vpc_id           = alicloud_vpc.vpc.id
  route_table_name = var.route_table_name_b
  tags             = var.route_table_tags_b
}

# Route Table Attachment
resource "alicloud_route_table_attachment" "route_table_attachment_worker_private_a" {
  vswitch_id     = alicloud_vswitch.vswitch_worker_private_a.id
  route_table_id = alicloud_route_table.route_table_a.id
}

resource "alicloud_route_table_attachment" "route_table_attachment_worker_private_b" {
  vswitch_id     = alicloud_vswitch.vswitch_worker_private_b.id
  route_table_id = alicloud_route_table.route_table_b.id
}

resource "alicloud_route_table_attachment" "route_table_attachment_pod_private_a" {
  vswitch_id     = alicloud_vswitch.vswitch_pod_private_a.id
  route_table_id = alicloud_route_table.route_table_a.id
}

resource "alicloud_route_table_attachment" "route_table_attachment_pod_private_b" {
  vswitch_id     = alicloud_vswitch.vswitch_pod_private_b.id
  route_table_id = alicloud_route_table.route_table_b.id
}

# Route Table Entry
resource "alicloud_route_entry" "route_entry_a" {
  route_table_id        = alicloud_route_table.route_table_a.id
  destination_cidrblock = var.route_entry_cidr_a
  nexthop_type          = "NatGateway"
  nexthop_id            = alicloud_nat_gateway.nat_gateway_a.id
}

resource "alicloud_route_entry" "route_entry_b" {
  route_table_id        = alicloud_route_table.route_table_b.id
  destination_cidrblock = var.route_entry_cidr_b
  nexthop_type          = "NatGateway"
  nexthop_id            = alicloud_nat_gateway.nat_gateway_b.id
}