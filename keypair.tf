resource "alicloud_ecs_key_pair" "ack_ssh_key_a" {
  key_pair_name     = var.ack_ssh_key_name_a
  resource_group_id = alicloud_resource_manager_resource_group.resource_group.id
  tags              = var.ack_ssh_key_tags_a
}