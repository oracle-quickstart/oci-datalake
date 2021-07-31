resource "oci_kms_vault" "OCIDataLake_Vault" {
    #Required
    compartment_id = var.compartment_network_ocid
    display_name = "OCIDataLake_Vault"
    vault_type = "VIRTUAL" ## VIRTUAL | VIRTUAL_PRIVATE
}