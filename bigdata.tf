resource "oci_bds_bds_instance" "datalake_bds_instance" {
  #Required
  cluster_admin_password = var.bds_instance_cluster_admin_password
  cluster_public_key     = var.bds_instance_cluster_public_key
  cluster_version        = var.bds_instance_cluster_version
  compartment_id         = var.compartment_network_ocid
  display_name           = var.bds_instance_display_name
  is_high_availability   = var.bds_instance_is_high_availability
  is_secure              = var.bds_instance_is_secure

  master_node {
    #Required
    shape = var.bds_instance_nodes_shape
    subnet_id                = oci_core_subnet.subnet_dev_DB_private.id
    block_volume_size_in_gbs = var.bds_instance_nodes_block_volume_size_in_gbs
    number_of_nodes          = 1
  }

  util_node {
    #Required
    shape = var.bds_instance_nodes_shape

    subnet_id                = oci_core_subnet.subnet_dev_DB_private.id
    block_volume_size_in_gbs = var.bds_instance_nodes_block_volume_size_in_gbs
    number_of_nodes          = 1
  }

  worker_node {
    #Required
    shape = var.bds_instance_worker_node_shape
    subnet_id                = oci_core_subnet.subnet_dev_DB_private.id
    block_volume_size_in_gbs = var.bds_instance_worker_nodes_block_volume_size_in_gbs
    number_of_nodes          = 3
  }

     cloud_sql_details {
       shape                    = "VM.Standard2.4"
       block_volume_size_in_gbs = 1000
     }

  is_cloud_sql_configured = true
  freeform_tags = var.bds_instance_freeform_tags
  network_config {
    #Optional
    cidr_block              = var.bds_instance_network_config_cidr_block
    is_nat_gateway_required = var.bds_instance_network_config_is_nat_gateway_required
  }
}

data "oci_bds_bds_instances" "datalake_bds_instances" {
  #Required
  compartment_id = var.compartment_network_ocid

  #Optional
  display_name = oci_bds_bds_instance.datalake_bds_instance.display_name
  state        = "ACTIVE"
}

data "oci_bds_bds_instance" "datalake_bds_instance" {
  #Required
  bds_instance_id = oci_bds_bds_instance.datalake_bds_instance.id
}

