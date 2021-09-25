resource "alicloud_vswitch" "vswitch_public_a" {
  vswitch_name      = var.vswitch_public_name_a
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_public_cidr_a
  zone_id           = var.vswitch_zone_a
  tags              = var_vswitch_public_tags_a
}

resource "alicloud_vswitch" "vswitch_public_b" {
  vswitch_name      = var.vswitch_public_name_b
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_public_cidr_b
  zone_id           = var.vswitch_zone_b
  tags              = var_vswitch_public_tags_b
}

resource "alicloud_vswitch" "vswitch_worker_private_a" {
  vswitch_name      = var.vswitch_worker_private_name_a
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_worker_private_cidr_a
  zone_id           = var.vswitch_zone_a
  tags              = var_vswitch_worker_private_tags_a
}

resource "alicloud_vswitch" "vswitch_worker_private_b" {
  vswitch_name      = var.vswitch_worker_private_name_b
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_worker_private_cidr_b
  zone_id           = var.vswitch_zone_b
  tags              = var_vswitch_worker_private_tags_b
}

resource "alicloud_vswitch" "vswitch_pod_private_a" {
  vswitch_name      = var.vswitch_pod_private_name_a
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_pod_private_cidr_a
  zone_id           = var.vswitch_zone_a
  tags              = var_vswitch_pods_private_tags_a
}

resource "alicloud_vswitch" "vswitch_pod_private_b" {
  vswitch_name      = var.vswitch_pod_private_name_b
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_pod_private_cidr_b
  zone_id           = var.vswitch_zone_b
  tags              = var_vswitch_pod_private_tags_b
}