resource oci_dataintegration_workspace export_DataIntegration_OCIWorkspace {
  compartment_id = var.compartment_network_ocid
  display_name = "DataIntegration_OCIWorkspace"
  is_private_network_enabled = "true"
  subnet_id = oci_core_subnet.subnet_dev_DB_private.id
  vcn_id    = oci_core_vcn.vcn.id
}
