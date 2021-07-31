resource oci_datacatalog_catalog export_OCIDataLake_DataCatalog {
  attached_catalog_private_endpoints = [
  ]
  compartment_id = var.compartment_network_ocid
  display_name = "OCIDataLake_DataCatalog"
}

