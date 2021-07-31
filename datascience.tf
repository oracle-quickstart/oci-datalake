resource "oci_datascience_project" "datalake_project" {
  #Required
  compartment_id = var.compartment_network_ocid
  display_name  = "DataScienceProject_DL"
}
