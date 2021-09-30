# Resource Group
variable "resource_group_name" {
  description = "The unique identifier of the resource group."
  type        = string
}

variable "resource_group_display_name" {
  description = "The display name of the resource group."
  type        = string
}

# VPC - Virtual Private Cloud
variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "vpc_tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the VPC"
}

# vSwitch - VPC Switch Resource
variable "vswitch_public_name_a" {
  type        = string
  description = "The name of the switch, public zone a"
}

variable "vswitch_public_cidr_a" {
  type        = string
  description = " The CIDR block for the switch, public zone a"
}

variable "vswitch_public_tags_a" {
  type        = map(string)
  description = "A mapping of tags to assign to the switch, public zone a"
}

variable "vswitch_public_name_b" {
  type        = string
  description = "The name of the switch, public zone b"
}

variable "vswitch_public_cidr_b" {
  type        = string
  description = " The CIDR block for the switch, public zone b"
}

variable "vswitch_public_tags_b" {
  type        = map(string)
  description = "A mapping of tags to assign to the switch, public zone b"
}

variable "vswitch_worker_private_name_a" {
  type        = string
  description = "The name of the worker switch, private zone a"
}

variable "vswitch_worker_private_cidr_a" {
  type        = string
  description = " The CIDR block for the worker switch, private zone a"
}

variable "vswitch_worker_private_tags_a" {
  type        = map(string)
  description = "A mapping of tags to assign to the worker switch, private zone a"
}

variable "vswitch_worker_private_name_b" {
  type        = string
  description = "The name of the worker switch, private zone b"
}

variable "vswitch_worker_private_cidr_b" {
  type        = string
  description = " The CIDR block for the worker switch, private zone b"
}

variable "vswitch_worker_private_tags_b" {
  type        = map(string)
  description = "A mapping of tags to assign to the worker switch, private zone b"
}

variable "vswitch_pod_private_name_a" {
  type        = string
  description = "The name of the pod switch, private zone a"
}

variable "vswitch_pod_private_cidr_a" {
  type        = string
  description = " The CIDR block for the pod switch, private zone a"
}

variable "vswitch_pod_private_tags_a" {
  type        = map(string)
  description = "A mapping of tags to assign to the pod switch, private zone a"
}

variable "vswitch_pod_private_name_b" {
  type        = string
  description = "The name of the pod switch, private zone b"
}

variable "vswitch_pod_private_cidr_b" {
  type        = string
  description = " The CIDR block for the pod switch, private zone b"
}

variable "vswitch_pod_private_tags_b" {
  type        = map(string)
  description = "A mapping of tags to assign to the pod switch, private zone b"
}

variable "vswitch_zone_a" {
  type        = string
  description = "The AZ for the switch, zone a"
}

variable "vswitch_zone_b" {
  type        = string
  description = "The AZ for the switch, zone b"
}

# Nat Gateway
variable "nat_name_a" {
  type        = string
  description = "Name of the nat gateway, zone a"
}

variable "nat_tags_a" {
  type        = map(string)
  description = "The tags of NAT gateway, zone a"
}

variable "nat_name_b" {
  type        = string
  description = "Name of the nat gateway, zone b"
}

variable "nat_tags_b" {
  type        = map(string)
  description = "The tags of NAT gateway, zone b"
}

# EIP
variable "eip_nat_name_a" {
  type        = string
  description = "Name of the NAT gateway EIP, zone a"
}

variable "eip_nat_name_b" {
  type        = string
  description = "Name of the NAT gateway EIP, zone b"
}

variable "eip_nat_tags_a" {
  type        = map(string)
  description = " A mapping of tags to assign to NAT gateway EIP, zone a"
}

variable "eip_nat_tags_b" {
  type        = map(string)
  description = " A mapping of tags to assign to the NAT gateway EIP, zone b"
}

# SNAT
variable "snat_entry_name_a" {
  type        = string
  description = "Name of the SNAT entry, zone a"
}

variable "snat_entry_name_b" {
  type        = string
  description = "Name of the SNAT entry, zone b"
}

# Route Table
variable "route_table_name_a" {
  type        = string
  description = "The name of the route table, zone a"
}

variable "route_table_tags_a" {
  type        = map(string)
  description = "A mapping of tags to assign to the route table, zone a"
}

variable "route_table_name_b" {
  type        = string
  description = "The name of the route table, zone b"
}

variable "route_table_tags_b" {
  type        = map(string)
  description = "A mapping of tags to assign to the route table, zone b"
}

variable "route_entry_cidr_a" {
  type        = string
  description = "The RouteEntry's target network segment, zone a"
}

variable "route_entry_cidr_b" {
  type        = string
  description = " The RouteEntry's target network segment, zone b"
}


# ACK - Container Service for Kubernetes
variable "ack_name" {
  description = "The kubernetes cluster's name. It is unique in one Alicloud account."
  type        = string
}

variable "ack_k8s_version" {
  description = "Desired Kubernetes version."
  type        = string
}

variable "ack_worker_count" {
  description = "The worker node number of the kubernetes cluster."
  type        = number
}

variable "ack_worker_instance_types" {
  description = "The instance type of worker node. Specify one type for single AZ Cluster, three types for MultiAZ Cluster."
  type        = list(string)
}

variable "ack_node_name_pattern" {
  description = "Each node name consists of a prefix, an IP substring, and a suffix. e.g. kubeop,5,node output will be kubeops[ip substring length]node"
  type        = string
}

variable "ack_tags" {
  description = "A map of tags assigned to the kubernetes cluster and work nodes."
  type        = map(string)
}
## ACK Node Pool
variable "ack_node_pool_name_a" {
  description = "The name of node pool. Zone A"
  type        = string
}

variable "ack_node_pool_instance_type_a" {
  description = "The instance type of worker node. Zone A"
  type        = list(string)
}

variable "ack_node_pool_count_a" {
  description = "The worker node number of the node pool.  Zone A"
  type        = number
}

variable "ack_ssh_key_name_a" {
  description = "The keypair of ssh login cluster node, you have to create it first.  Zone A"
  type        = string
}

variable "ack_ssh_key_tags_a" {
  description = "A mapping of tags to assign to the ssh keypair. Zone A"
  type        = map(string)
}

variable "ack_node_pool_surge_percent_a" {
  description = "Proportion of additional nodes in percentage.  Zone A"
  type        = number
}

variable "ack_node_pool_min_size_a" {
  description = " Min number of instances in a auto scaling group, its valid value range [0~1000].  Zone A"
  type        = number
}

variable "ack_node_pool_max_size_a" {
  description = " Max number of instances in a auto scaling group, its valid value range [0~1000]. max_size has to be greater than min_size.  Zone A"
  type        = number
}

variable "ack_node_pool_type_a" {
  description = " Instance classification, not required. Vaild value: cpu, gpu, gpushare and spot. Default: cpu. Zone A"
  type        = string
}

variable "ack_node_pool_tags_a" {
  description = "  Map of tags to assign to the resource. Zone A"
  type        = map(string)
}