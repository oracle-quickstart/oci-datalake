resource "oci_integration_integration_instance" "test_integration_instance" {
  #Required
  compartment_id            = var.compartment_network_ocid
  display_name              = "DatalakeOIC"
  integration_instance_type = "STANDARD"
  is_byol                   = "false"
  message_packs             = "1"


  idcs_at                = var.integration_instance_idcs_access_token
  is_file_server_enabled = true
  state                  = "ACTIVE"

  network_endpoint_details {
    allowlisted_http_ips = ["10.10.0.0/16"]
    is_integration_vcn_allowlisted = "false"
    network_endpoint_type = "PUBLIC"
  }

}

data "oci_integration_integration_instances" "test_integration_instances" {
  #Required
  compartment_id = var.compartment_network_ocid

  #Optional
  display_name = "DatalakeOIC"
  state        = "Active"
}

data "oci_integration_integration_instance" "test_integration_instance" {
  #Required
  integration_instance_id = oci_integration_integration_instance.test_integration_instance.id
}