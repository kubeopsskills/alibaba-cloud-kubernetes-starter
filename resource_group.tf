resource "alicloud_resource_manager_resource_group" "resource_group" {
  resource_group_name = var.resource_group_name
  display_name        = var.resource_group_display_name
}