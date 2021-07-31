data "oci_objectstorage_namespace" "test_namespace" {
}

/*
resource "oci_golden_gate_deployment_backup" "test_deployment_backup" {
  	#Required
	bucket         = oci_objectstorage_bucket.GoldenGate_Bucket.name
  	compartment_id = var.compartment_network_ocid
  	deployment_id  = oci_golden_gate_deployment.test_backup_deployment.id
  	display_name   = var.deployment_display_name
  	namespace 	   = data.oci_objectstorage_namespace.test_namespace.namespace
  	object = "object"
  	lifecycle {
  	}

}
*/

resource oci_objectstorage_bucket GoldenGate_Bucket {
  access_type    = "NoPublicAccess"
  auto_tiering   = "InfrequentAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "GoldenGate_Bucket"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}


/*
resource "oci_golden_gate_deployment" "test_backup_deployment" {
	#Required
  	compartment_id          = var.compartment_network_ocid
  	cpu_core_count          = var.deployment_cpu_core_count
  	deployment_type         = var.deployment_deployment_type
  	display_name            = var.deployment_display_name
  	is_auto_scaling_enabled = var.deployment_is_auto_scaling_enabled
  	license_model           = var.deployment_license_model
	subnet_id 				= oci_core_subnet.subnet_dev_DB_private.id  	
  	ogg_data {
		admin_password  = var.deployment_ogg_data_admin_password
    	admin_username  = var.deployment_ogg_data_admin_username
    	deployment_name = var.deployment_ogg_data_deployment_name
  	}
	
}
*/

resource "oci_golden_gate_deployment" "test_deployment" {
  #Required
  compartment_id          = var.compartment_network_ocid
  cpu_core_count          = var.deployment_cpu_core_count
  deployment_type         = var.deployment_deployment_type
  display_name            = var.deployment_display_name
  is_auto_scaling_enabled = var.deployment_is_auto_scaling_enabled
  license_model           = var.deployment_license_model
  subnet_id               = oci_core_subnet.subnet_dev_DB_private.id

  #Optional
  #defined_tags         = map(oci_identity_tag_namespace.tag-namespace1.name.oci_identity_tag.tag1.name, var.deployment_defined_tags_value)
  #deployment_backup_id = oci_golden_gate_deployment_backup.test_deployment_backup.id
  description          = var.deployment_description
  fqdn                 = var.deployment_fqdn
  freeform_tags        = var.deployment_freeform_tags
  is_public            = var.deployment_is_public
  ogg_data {
    #Required
    admin_password  = var.deployment_ogg_data_admin_password
    admin_username  = var.deployment_ogg_data_admin_username
    deployment_name = var.deployment_ogg_data_deployment_name

    #Optional
    certificate = var.deployment_ogg_data_certificate
    key         = var.deployment_ogg_data_key
  }
}


data "oci_golden_gate_deployments" "test_deployments" {
  #Required
  compartment_id = var.compartment_network_ocid

  #Optional
  display_name = var.deployment_display_name
  state        = var.deployment_state
}