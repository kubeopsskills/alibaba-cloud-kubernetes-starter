resource "alicloud_cs_managed_kubernetes" "ack" {
  name              = var.ack_name
  resource_group_id = alicloud_resource_manager_resource_group.resource_group.id
  version           = var.ack_k8s_version
  runtime = {
    name    = "containerd"
    version = "1.4.8"
  }
  enable_ssh            = false
  deletion_protection   = true
  install_cloud_monitor = true
  cluster_spec          = "ack.pro.small"
  pod_vswitch_ids       = [alicloud_vswitch.vswitch_pod_private_a.id, alicloud_vswitch.vswitch_pod_private_b.id]
  service_cidr          = "192.168.0.0/16"
  new_nat_gateway       = false
  slb_internet_enabled  = true
  worker_number         = var.ack_worker_count
  worker_instance_types = var.ack_worker_instance_types
  worker_vswitch_ids    = [alicloud_vswitch.vswitch_worker_private_a.id, alicloud_vswitch.vswitch_worker_private_b.id]
  worker_disk_category  = "cloud_ssd"
  node_name_mode        = var.ack_node_name_pattern # eg. "kubeops,5,node"
  os_type               = "Linux"
  platform              = "AliyunLinux"
  tags                  = var.ack_tags

  addons {
    name   = "terway-eniip"
    config = ""
  }

  addons {
    name   = "nginx-ingress-controller"
    config = "{\"IngressSlbNetworkType\":\"internet\"}"
  }

}

resource "alicloud_cs_kubernetes_node_pool" "ack_node_pool_a" {
  name                 = var.ack_node_pool_name_a
  cluster_id           = alicloud_cs_managed_kubernetes.ack.id
  vswitch_ids          = [alicloud_vswitch.vswitch_worker_private_a.id]
  instance_types       = var.ack_node_pool_instance_type_a
  node_count           = var.ack_node_pool_count_a
  system_disk_category = "cloud_ssd"
  platform             = "AliyunLinux"
  node_name_mode       = var.ack_node_name_pattern # eg. "kubeops,5,node"
  key_name             = alicloud_ecs_key_pair.ack_ssh_key_a.id
  management {
    auto_repair      = true
    max_unavailable  = 0
    surge_percentage = var.ack_node_pool_surge_percent_a
  }
  scaling_config {
    min_size = var.ack_node_pool_min_size_a
    max_size = var.ack_node_pool_max_size_a
    type     = var.ack_node_pool_type_a
  }
  resource_group_id = alicloud_resource_manager_resource_group.resource_group.id
  tags              = var.ack_node_pool_tags_a
}