## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | 1.136.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_cs_kubernetes_node_pool.ack_node_pool_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/cs_kubernetes_node_pool) | resource |
| [alicloud_cs_managed_kubernetes.ack](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/cs_managed_kubernetes) | resource |
| [alicloud_nat_gateway.nat_gateway_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/nat_gateway) | resource |
| [alicloud_nat_gateway.nat_gateway_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/nat_gateway) | resource |
| [alicloud_resource_manager_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/resource_manager_resource_group) | resource |
| [alicloud_route_entry.route_entry_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_entry) | resource |
| [alicloud_route_entry.route_entry_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_entry) | resource |
| [alicloud_route_table.route_table_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_table) | resource |
| [alicloud_route_table.route_table_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_table) | resource |
| [alicloud_route_table_attachment.route_table_attachment_pod_private_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_table_attachment) | resource |
| [alicloud_route_table_attachment.route_table_attachment_pod_private_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_table_attachment) | resource |
| [alicloud_route_table_attachment.route_table_attachment_worker_private_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_table_attachment) | resource |
| [alicloud_route_table_attachment.route_table_attachment_worker_private_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/route_table_attachment) | resource |
| [alicloud_vpc.vpc](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vpc) | resource |
| [alicloud_vswitch.vswitch_pod_private_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |
| [alicloud_vswitch.vswitch_pod_private_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |
| [alicloud_vswitch.vswitch_public_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |
| [alicloud_vswitch.vswitch_public_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |
| [alicloud_vswitch.vswitch_worker_private_a](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |
| [alicloud_vswitch.vswitch_worker_private_b](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ack_k8s_version"></a> [ack\_k8s\_version](#input\_ack\_k8s\_version) | Desired Kubernetes version. | `string` | n/a | yes |
| <a name="input_ack_name"></a> [ack\_name](#input\_ack\_name) | The kubernetes cluster's name. It is unique in one Alicloud account. | `string` | n/a | yes |
| <a name="input_ack_node_name_pattern"></a> [ack\_node\_name\_pattern](#input\_ack\_node\_name\_pattern) | Each node name consists of a prefix, an IP substring, and a suffix. e.g. kubeop,5,node output will be kubeops[ip substring length]node | `string` | n/a | yes |
| <a name="input_ack_node_pool_count_a"></a> [ack\_node\_pool\_count\_a](#input\_ack\_node\_pool\_count\_a) | The worker node number of the node pool.  Zone A | `number` | n/a | yes |
| <a name="input_ack_node_pool_instance_type_a"></a> [ack\_node\_pool\_instance\_type\_a](#input\_ack\_node\_pool\_instance\_type\_a) | The instance type of worker node. Zone A | `string` | n/a | yes |
| <a name="input_ack_node_pool_max_size_a"></a> [ack\_node\_pool\_max\_size\_a](#input\_ack\_node\_pool\_max\_size\_a) | Max number of instances in a auto scaling group, its valid value range [0~1000]. max\_size has to be greater than min\_size.  Zone A | `number` | n/a | yes |
| <a name="input_ack_node_pool_min_size_a"></a> [ack\_node\_pool\_min\_size\_a](#input\_ack\_node\_pool\_min\_size\_a) | Min number of instances in a auto scaling group, its valid value range [0~1000].  Zone A | `number` | n/a | yes |
| <a name="input_ack_node_pool_name_a"></a> [ack\_node\_pool\_name\_a](#input\_ack\_node\_pool\_name\_a) | The name of node pool. Zone A | `string` | n/a | yes |
| <a name="input_ack_node_pool_surge_percent_a"></a> [ack\_node\_pool\_surge\_percent\_a](#input\_ack\_node\_pool\_surge\_percent\_a) | Proportion of additional nodes in percentage.  Zone A | `number` | n/a | yes |
| <a name="input_ack_node_pool_tags_a"></a> [ack\_node\_pool\_tags\_a](#input\_ack\_node\_pool\_tags\_a) | Map of tags to assign to the resource. Zone A | `map(string)` | n/a | yes |
| <a name="input_ack_node_pool_type_a"></a> [ack\_node\_pool\_type\_a](#input\_ack\_node\_pool\_type\_a) | Instance classification, not required. Vaild value: cpu, gpu, gpushare and spot. Default: cpu. Zone A | `string` | n/a | yes |
| <a name="input_ack_ssh_key_name_a"></a> [ack\_ssh\_key\_name\_a](#input\_ack\_ssh\_key\_name\_a) | The keypair of ssh login cluster node, you have to create it first.  Zone A | `string` | n/a | yes |
| <a name="input_ack_tags"></a> [ack\_tags](#input\_ack\_tags) | A map of tags assigned to the kubernetes cluster and work nodes. | `map(string)` | n/a | yes |
| <a name="input_ack_worker_count"></a> [ack\_worker\_count](#input\_ack\_worker\_count) | The worker node number of the kubernetes cluster. | `number` | n/a | yes |
| <a name="input_ack_worker_instance_types"></a> [ack\_worker\_instance\_types](#input\_ack\_worker\_instance\_types) | The instance type of worker node. Specify one type for single AZ Cluster, three types for MultiAZ Cluster. | `string` | n/a | yes |
| <a name="input_nat_name_a"></a> [nat\_name\_a](#input\_nat\_name\_a) | Name of the nat gateway, zone a | `string` | n/a | yes |
| <a name="input_nat_name_b"></a> [nat\_name\_b](#input\_nat\_name\_b) | Name of the nat gateway, zone b | `string` | n/a | yes |
| <a name="input_nat_size"></a> [nat\_size](#input\_nat\_size) | The size of the nat gateway | `string` | n/a | yes |
| <a name="input_nat_tags_a"></a> [nat\_tags\_a](#input\_nat\_tags\_a) | The tags of NAT gateway, zone a | `map(string)` | n/a | yes |
| <a name="input_nat_tags_b"></a> [nat\_tags\_b](#input\_nat\_tags\_b) | The tags of NAT gateway, zone b | `map(string)` | n/a | yes |
| <a name="input_resource_group_display_name"></a> [resource\_group\_display\_name](#input\_resource\_group\_display\_name) | The display name of the resource group. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The unique identifier of the resource group. | `string` | n/a | yes |
| <a name="input_route_entry_cidr_a"></a> [route\_entry\_cidr\_a](#input\_route\_entry\_cidr\_a) | The RouteEntry's target network segment, zone a | `string` | n/a | yes |
| <a name="input_route_entry_cidr_b"></a> [route\_entry\_cidr\_b](#input\_route\_entry\_cidr\_b) | The RouteEntry's target network segment, zone b | `string` | n/a | yes |
| <a name="input_route_table_name_a"></a> [route\_table\_name\_a](#input\_route\_table\_name\_a) | The name of the route table, zone a | `string` | n/a | yes |
| <a name="input_route_table_name_b"></a> [route\_table\_name\_b](#input\_route\_table\_name\_b) | The name of the route table, zone b | `string` | n/a | yes |
| <a name="input_route_table_tags_a"></a> [route\_table\_tags\_a](#input\_route\_table\_tags\_a) | A mapping of tags to assign to the route table, zone a | `map(string)` | n/a | yes |
| <a name="input_route_table_tags_b"></a> [route\_table\_tags\_b](#input\_route\_table\_tags\_b) | A mapping of tags to assign to the route table, zone b | `map(string)` | n/a | yes |
| <a name="input_var_vswitch_public_tags_a"></a> [var\_vswitch\_public\_tags\_a](#input\_var\_vswitch\_public\_tags\_a) | A mapping of tags to assign to the switch, public zone a | `map(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block for the VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC | `string` | n/a | yes |
| <a name="input_vpc_tags"></a> [vpc\_tags](#input\_vpc\_tags) | A mapping of tags to assign to the VPC | `map(string)` | n/a | yes |
| <a name="input_vswitch_pod_private_cidr_a"></a> [vswitch\_pod\_private\_cidr\_a](#input\_vswitch\_pod\_private\_cidr\_a) | The CIDR block for the pod switch, private zone a | `string` | n/a | yes |
| <a name="input_vswitch_pod_private_cidr_b"></a> [vswitch\_pod\_private\_cidr\_b](#input\_vswitch\_pod\_private\_cidr\_b) | The CIDR block for the pod switch, private zone b | `string` | n/a | yes |
| <a name="input_vswitch_pod_private_name_a"></a> [vswitch\_pod\_private\_name\_a](#input\_vswitch\_pod\_private\_name\_a) | The name of the pod switch, private zone a | `string` | n/a | yes |
| <a name="input_vswitch_pod_private_name_b"></a> [vswitch\_pod\_private\_name\_b](#input\_vswitch\_pod\_private\_name\_b) | The name of the pod switch, private zone b | `string` | n/a | yes |
| <a name="input_vswitch_pod_private_tags_a"></a> [vswitch\_pod\_private\_tags\_a](#input\_vswitch\_pod\_private\_tags\_a) | A mapping of tags to assign to the pod switch, private zone a | `map(string)` | n/a | yes |
| <a name="input_vswitch_pod_private_tags_b"></a> [vswitch\_pod\_private\_tags\_b](#input\_vswitch\_pod\_private\_tags\_b) | A mapping of tags to assign to the pod switch, private zone b | `map(string)` | n/a | yes |
| <a name="input_vswitch_public_cidr_a"></a> [vswitch\_public\_cidr\_a](#input\_vswitch\_public\_cidr\_a) | The CIDR block for the switch, public zone a | `string` | n/a | yes |
| <a name="input_vswitch_public_cidr_b"></a> [vswitch\_public\_cidr\_b](#input\_vswitch\_public\_cidr\_b) | The CIDR block for the switch, public zone b | `string` | n/a | yes |
| <a name="input_vswitch_public_name_a"></a> [vswitch\_public\_name\_a](#input\_vswitch\_public\_name\_a) | The name of the switch, public zone a | `string` | n/a | yes |
| <a name="input_vswitch_public_name_b"></a> [vswitch\_public\_name\_b](#input\_vswitch\_public\_name\_b) | The name of the switch, public zone b | `string` | n/a | yes |
| <a name="input_vswitch_public_tags_b"></a> [vswitch\_public\_tags\_b](#input\_vswitch\_public\_tags\_b) | A mapping of tags to assign to the switch, public zone b | `map(string)` | n/a | yes |
| <a name="input_vswitch_worker_private_cidr_a"></a> [vswitch\_worker\_private\_cidr\_a](#input\_vswitch\_worker\_private\_cidr\_a) | The CIDR block for the worker switch, private zone a | `string` | n/a | yes |
| <a name="input_vswitch_worker_private_cidr_b"></a> [vswitch\_worker\_private\_cidr\_b](#input\_vswitch\_worker\_private\_cidr\_b) | The CIDR block for the worker switch, private zone b | `string` | n/a | yes |
| <a name="input_vswitch_worker_private_name_a"></a> [vswitch\_worker\_private\_name\_a](#input\_vswitch\_worker\_private\_name\_a) | The name of the worker switch, private zone a | `string` | n/a | yes |
| <a name="input_vswitch_worker_private_name_b"></a> [vswitch\_worker\_private\_name\_b](#input\_vswitch\_worker\_private\_name\_b) | The name of the worker switch, private zone b | `string` | n/a | yes |
| <a name="input_vswitch_worker_private_tags_a"></a> [vswitch\_worker\_private\_tags\_a](#input\_vswitch\_worker\_private\_tags\_a) | A mapping of tags to assign to the worker switch, private zone a | `map(string)` | n/a | yes |
| <a name="input_vswitch_worker_private_tags_b"></a> [vswitch\_worker\_private\_tags\_b](#input\_vswitch\_worker\_private\_tags\_b) | A mapping of tags to assign to the worker switch, private zone b | `map(string)` | n/a | yes |

## Outputs

No outputs.
