resource "alicloud_snat_entry" "alicloud_snat_a" {
  snat_entry_name   = var.snat_entry_name_a
  source_vswitch_id = alicloud_vswitch.vswitch_pod_private_a.id
  snat_table_id     = alicloud_nat_gateway.nat_gateway_a.snat_table_ids
  snat_ip           = alicloud_eip_address.nat_gateway_eip_a.ip_address
}

resource "alicloud_snat_entry" "alicloud_snat_b" {
  snat_entry_name   = var.snat_entry_name_b
  source_vswitch_id = alicloud_vswitch.vswitch_pod_private_b.id
  snat_table_id     = alicloud_nat_gateway.nat_gateway_b.snat_table_ids
  snat_ip           = alicloud_eip_address.nat_gateway_eip_b.ip_address
}