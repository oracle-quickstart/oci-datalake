# Variables #

variable "Resource_prefix" {
  type        = string
  description = "provide value of Resource Prefix like customer name."
  default = "XYZ"
}

variable "Resource_suffix_dev" {
  type        = string
  description = "provide value of Resource Prefix like Environment name for e.g Dev, Prod."
  default = "DEV"
}

variable "Resource_main" {
  type        = string
  description = "provide value of Resource Prefix like customer name."
  default = "DL"
}

## Provider Variables

variable "region" {
  type        = string
  description = "provide value of region"
  default = ""
}

variable "availability_domain" {
  type        = string
  description = "provide value of availability domain"
  default = ""
}


## Tenancy Compartments

variable "compartment_network_ocid" {
  type        = string
  description = "provide value of compartment id where you will deploy the stack"
  default = ""
}

## VCN Variables

variable "vcn_cidr" {
  type        = string
  description = "provide value of vcn cidr"
  default = "10.10.0.0/16"
}

variable "vcn_dns_prefix" {
  type        = string
  description = "provide value of vcn Dns Prefix"
  default = "datalake"
}

## Subnet

variable "subnet_dev_pub_cidr" {
  type        = string
  description = "provide value of public subnet cidr"
  default = "10.10.1.0/24"
}

variable "subnet_dev_pvt_db_cidr" {
  type        = string
  description = "provide value of private subnet cidr"
  default = "10.10.2.0/24"
}

variable "subnet_dev_pvt_app_cidr" {
  type        = string
  description = "provide value of private subnet cidr"
  default = "10.10.3.0/24"
}

## Database

variable "database_admin_password" {
  type        = string
  description = "provide value of Database Password"
  default = "COmplexP@ssword1234#_"
}

variable "database_db_unique_name" {
  type        = string
  description = "provide value of Database Unique Name"
  default = ""
}

variable "database_db_workload" {
  type        = string
  description = "provide value of Database workload"
  default = "OLTP"
}

variable "database_pdb_name" {
  type        = string
  description = "provide value of Database PDB Name"
  default = "PDB1"
}

variable "database_version" {
  type        = string
  description = "provide value of Database Version"
  default = "19.11.0.0"
}

variable "database_shape" {
  type        = string
  description = "provide value of Database Shape"
  default = "VM.Standard2.1"
}

variable "database_shape_prod" {
  type        = string
  description = "provide value of Database Shape for Production DB"
  default = "VM.Standard2.2"
}

variable "database_storage" {
  type        = string
  description = "provide value of Database Storage"
  default = "256"
}


variable "database_storage_management" {
  type        = string
  description = "provide value of Database Storage option wither LVM or ASM"
  default = "LVM"
}



variable "database_storage_prod" {
  type        = string
  description = "provide value of Database Storage for Production DB"
  default = "1024"
}

variable "database_edition" {
  type        = string
  description = "provide value of Database Edition"
  default = "ENTERPRISE_EDITION"
}

variable "database_ssh_pub_key" {
  type        = string
  description = "provide value of Database Public SSH Key"
  default = ""
}

variable "database_nodecount" {
  type        = string
  description = "provide value of Database Node Count"
  default = "1"
}

## OAC

variable "oac_capacity_type" {
  type        = string
  description = "provide value of OAC Capacity Type"
  default = "OLPU_COUNT"
}

variable "oac_capacity_value" {
  type        = string
  description = "provide value of OAC Capacity Value"
  default = "1"
}

variable "oac_capacity_value_prod" {
  type        = string
  description = "provide value of OAC Capacity Value for Production"
  default = "2"
}

variable "oac_feature_set" {
  type        = string
  description = "provide value of OAC Feature set"
  default = "ENTERPRISE_ANALYTICS"
}

variable "oac_license_type" {
  type        = string
  description = "provide value of OAC Licence Type"
  default = "LICENSE_INCLUDED"
}

variable "oac_idcs_token" {
  type        = string
  description = "provide value of OAC IDCS Token"
  default = "ef3ddsd....hhee"
}

#PAC

variable "oac_pac_domain_suffix" {
  type        = string
  description = "provide Suffix of OAC PAC Domain Name"
  default = "oraclevcn.com"
}


## Big Data

variable "bds_instance_cluster_admin_password" {
  default = "V2VsY29tZTE="
}

variable "bds_instance_cluster_public_key" {
  default = "ssh-rsa AA......."
}

variable "bds_instance_cluster_version" {
  default = "ODH1"
}

variable "bds_instance_defined_tags_value" {
  default = "value"
}

variable "bds_instance_display_name" {
  default = "BigData"
}

variable "bds_instance_freeform_tags" {
  default = {
    "bar-key" = "value"
  }
}

variable "bds_instance_is_high_availability" {
  default = false
}

variable "bds_instance_is_secure" {
  default = false
}

variable "bds_instance_network_config_cidr_block" {
  default = "192.168.0.0/16"
}

variable "bds_instance_network_config_is_nat_gateway_required" {
  default = false
}

variable "bds_instance_nodes_block_volume_size_in_gbs" {
  default = 150
}

variable "bds_instance_worker_nodes_block_volume_size_in_gbs" {
  default = 150
}

variable "bds_instance_nodes_shape" {
  default = "VM.Standard2.4"
}

variable "bds_instance_worker_node_shape" {
  default = "VM.Standard2.1"
}

variable "bds_instance_state" {
  default = "ACTIVE"
}

variable "tag_namespace_description" {
  default = "Just a test"
}

variable "tag_namespace_name" {
  default = "testexamples-tag-namespace"
}

## Bastion Service 
variable "bastion_bastion_lifecycle_state" {
  default = "ACTIVE"
}

variable "bastion_client_cidr_block_allow_list" {
  default = ["0.0.0.0/0"]
}

variable "bastion_name" {
  default = "DataLakeBastionDB"
}

variable "App_bastion_name" {
  default = "DataLakeBastionAPP"
}

variable "bastion_max_session_ttl_in_seconds" {
  default = 1800
}

## Autonomous Datawarehouse + APEX

variable "autonomous_database_backup_display_name" {
  default = "Monthly Backup"
}

variable "autonomous_database_db_workload" {
  default = "OLTP"
}

variable "autonomous_data_warehouse_db_workload" {
  default = "DW"
}

variable "autonomous_database_defined_tags_value" {
  default = "value"
}

variable "autonomous_database_freeform_tags" {
  default = {
    "Department" = "Finance"
  }
}

variable "autonomous_database_license_model" {
  default = "LICENSE_INCLUDED"
}

variable "autonomous_database_is_dedicated" {
  default = false
}

variable "autonomous_database_whitelistip" {
  default = "10.10.0.0/16"
}

## GoldenGate ##
variable "deployment_cpu_core_count" {
  	default = 1
}

variable "deployment_defined_tags_value" {
  	default = "value"
}

variable "deployment_deployment_type" {
  	default = "OGG"
}

variable "deployment_description" {
  	default = "description"
}

variable "deployment_display_name" {
  	default = "GoldenGate_DL"
}

variable "deployment_fqdn" {
  	default = "fqdn.ggs.com"
}

variable "deployment_freeform_tags" {
  	default = { "bar-key" = "value" }
}

variable "deployment_is_auto_scaling_enabled" {
  	default = false
}

variable "deployment_is_public" {
  	default = false
}

variable "deployment_license_model" {
  	default = "LICENSE_INCLUDED"
}

variable "deployment_ogg_data_admin_password" {
  	default = "BEstrO0ng_#11"
}

variable "deployment_ogg_data_admin_username" {
  default = "ggadmin"
}

variable "deployment_ogg_data_deployment_name" {
  default = "deployment"
}

variable "deployment_ogg_data_certificate" {
  	default = "certificate"
}

variable "deployment_ogg_data_key" {
  	default = "key"
}

variable "deployment_state" {
  	default = "ACTIVE"
}

variable defined_tag_namespace_name { default = "" }

## Oracle Integration Cloud (OIC)
variable "integration_instance_idcs_access_token" {
  default="eyJ4NXQ....RW5g"
}

variable "integration_instance_consumption_model" {
  default = "UCM"
}

variable allow_listed_http_vcn {
  default = "10.10.0.0/16"
}

## Dataflow 


variable "application_display_name" {
  default = "Datalake_Example_App"
}

variable "application_driver_shape" {
  default = "VM.Standard2.1"
}

variable "application_executor_shape" {
  default = "VM.Standard2.1"
}

variable "application_language" {
  default = "PYTHON"
}

variable "application_num_executors" {
  default = 1
}

variable "application_spark_version" {
  default = "2.4"
}

variable "invoke_run_display_name" {
  default = "tf_run"
}
