# Resource Group
resource_group_display_name = "kubeopsskills-ack-quick-start"
resource_group_name         = "kubeopsskills-ack-quick-start-rg"

# ACK Cluster
ack_k8s_version       = "1.20.4-aliyun.1"
ack_name              = "kubeopsskills-ack-quick-start-cluster"
ack_node_name_pattern = "customized,kubeopsskills,5,node"
ack_tags = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-cluster"
}
ack_worker_count          = 0
ack_worker_instance_types = ["ecs.g6.xlarge"]

# VPC
vpc_name = "kubeopsskills-ack-quick-start-vpc"
vpc_cidr = "10.0.0.0/8"
vpc_tags = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vpc"
}

# VSwitch
vswitch_public_cidr_a = "10.0.1.0/24"
vswitch_public_cidr_b = "10.0.2.0/24"
vswitch_public_name_a = "kubeopsskills-ack-quick-start-vs-public-a"
vswitch_public_name_b = "kubeopsskills-ack-quick-start-vs-public-b"
vswitch_public_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vs-public-a"
}
vswitch_public_tags_b = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vs-public-b"
}

vswitch_worker_private_cidr_a = "10.0.3.0/24"
vswitch_worker_private_cidr_b = "10.0.4.0/24"
vswitch_worker_private_name_a = "kubeopsskills-ack-quick-start-vs-worker-private-a"
vswitch_worker_private_name_b = "kubeopsskills-ack-quick-start-vs-worker-private-b"
vswitch_worker_private_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vs-worker-private-a"
}
vswitch_worker_private_tags_b = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vs-worker-private-b"
}

vswitch_pod_private_cidr_a = "10.0.5.0/24"
vswitch_pod_private_cidr_b = "10.0.6.0/24"
vswitch_pod_private_name_a = "kubeopsskills-ack-quick-start-vs-pod-private-a"
vswitch_pod_private_name_b = "kubeopsskills-ack-quick-start-vs-pod-private-b"
vswitch_pod_private_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vs-pod-private-a"
}
vswitch_pod_private_tags_b = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-vs-pod-private-b"
}

vswitch_zone_a = "ap-southeast-1a"
vswitch_zone_b = "ap-southeast-1b"

# NAT
nat_name_a = "kubeopsskills-ack-quick-start-nat-a"
nat_name_b = "kubeopsskills-ack-quick-start-nat-b"
nat_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-nat-a"
}
nat_tags_b = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-nat-b"
}

# SNAT
snat_entry_name_a = "kubeopsskills-ack-quick-start-snat-a"
snat_entry_name_b = "kubeopsskills-ack-quick-start-snat-b"

# EIP
eip_nat_name_a = "kubeopsskills-ack-quick-start-nat-eip-a"
eip_nat_name_b = "kubeopsskills-ack-quick-start-nat-eip-b"
eip_nat_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-nat-eip-a"
}
eip_nat_tags_b = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-nat-eip-b"
}

# Route Table
route_entry_cidr_a = "0.0.0.0/0"
route_entry_cidr_b = "0.0.0.0/0"
route_table_name_a = "kubeopsskills-ack-quick-start-route-table-a"
route_table_name_b = "kubeopsskills-ack-quick-start-route-table-b"
route_table_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-route-table-a"
}
route_table_tags_b = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-route-table-b"
}

# ACK Node Pool
ack_node_pool_count_a         = 2
ack_node_pool_instance_type_a = ["ecs.g6.xlarge"]
ack_node_pool_max_size_a      = 4
ack_node_pool_min_size_a      = 2
ack_node_pool_name_a          = "kubeopsskills-ack-quick-start-node-pool-a"
ack_node_pool_surge_percent_a = 25
ack_node_pool_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-node-pool-a"
}
ack_node_pool_type_a = "cpu"
ack_ssh_key_name_a   = "kubeopsskills-ack-quick-start-ssh-key-a"
ack_ssh_key_tags_a = {
  "Environment" = "Demo"
  "Name"        = "kubeopsskills-ack-quick-start-ssh-key-a"
}