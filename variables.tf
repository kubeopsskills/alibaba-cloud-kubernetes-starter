# Resource Group
variable "resource_group_name" {
  description = "The unique identifier of the resource group."
  type = string
}

variable "resource_group_display_name" {
  description = "The display name of the resource group."
  type = string
}

# VPC - Virtual Private Cloud

# vSwitch - VPC Switch Resource
variable "vswitch_public_name_a" {
  type = string
  description = "The name of the switch, public zone a"
}

variable "vswitch_public_cidr_a" {
  type = string
  description = " The CIDR block for the switch, public zone a"
}

variable "var_vswitch_public_tags_a" {
  type = map(string)
  description = "A mapping of tags to assign to the switch, public zone a"
}

variable "vswitch_public_name_b" {
  type = string
  description = "The name of the switch, public zone b"
}

variable "vswitch_public_cidr_b" {
  type = string
  description = " The CIDR block for the switch, public zone b"
}

variable "vswitch_public_tags_b" {
  type = map(string)
  description = "A mapping of tags to assign to the switch, public zone b"
}

variable "vswitch_worker_private_name_a" {
  type = string
  description = "The name of the switch, private zone a"
}

variable "vswitch_worker_private_cidr_a" {
  type = string
  description = " The CIDR block for the switch, private zone a"
}

variable "vswitch_worker_private_tags_a" {
  type = map(string)
  description = "A mapping of tags to assign to the switch, private zone a"
}

variable "vswitch_worker_private_name_b" {
  type = string
  description = "The name of the switch, private zone a"
}

variable "vswitch_worker_private_cidr_b" {
  type = string
  description = " The CIDR block for the switch, private zone a"
}

variable "vswitch_worker_private_tags_b" {
  type = map(string)
  description = "A mapping of tags to assign to the switch, private zone a"
}
 
# Nat Gateway

# Route Table

# ACK - Container Service for Kubernetes
variable "ack_name" {
  description = "The kubernetes cluster's name. It is unique in one Alicloud account."
  type = string
}

variable "ack_k8s_version" {
  description = "Desired Kubernetes version."
  type = string
}

variable "ack_worker_count" {
  description = "The worker node number of the kubernetes cluster."
  type = number
}

variable "ack_worker_instance_types" {
  description = "The instance type of worker node. Specify one type for single AZ Cluster, three types for MultiAZ Cluster."
  type = string
}

variable "ack_node_name_pattern" {
  description = "Each node name consists of a prefix, an IP substring, and a suffix. e.g. kubeop,5,node output will be kubeops[ip substring length]node"
  type = string
}

variable "ack_tags" {
  description = "A map of tags assigned to the kubernetes cluster and work nodes."
  type = map(string)
}

## nodepool




