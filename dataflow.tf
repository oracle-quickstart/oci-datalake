resource "oci_dataflow_application" "tf_application" {
  #Required
  compartment_id = var.compartment_network_ocid
  display_name   = var.application_display_name
  driver_shape   = var.application_driver_shape
  executor_shape = var.application_executor_shape
  file_uri       = "oci://dataflow-logs@${data.oci_objectstorage_namespace.export_namespace.namespace}/testfile.py"
  language       = var.application_language
  num_executors  = var.application_num_executors
  spark_version  = var.application_spark_version
}

data "oci_dataflow_applications" "tf_applications" {
  #Required
  compartment_id = var.compartment_network_ocid

  #Optional
  display_name = var.application_display_name
}
