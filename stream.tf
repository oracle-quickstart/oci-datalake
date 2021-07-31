resource "oci_streaming_stream" "Datalake_Stream" {
     compartment_id = var.compartment_network_ocid
     name = "Datalake_Streams"
     partitions = "2"
     retention_in_hours = "24"
}