output "cluster_id" {
  description = "Cluster ID"
  value       = alicloud_cs_managed_kubernetes.ack.id
}

output "cluster_name" {
  description = "Cluster name"
  value       = alicloud_cs_managed_kubernetes.ack.name
}

output "cluster_endpoint" {
  description = "Cluster endpoint"
  value       = alicloud_cs_managed_kubernetes.ack.connections.api_server_internet
}

output "cluster_version" {
  description = "Cluster version"
  value       = alicloud_cs_managed_kubernetes.ack.version
}