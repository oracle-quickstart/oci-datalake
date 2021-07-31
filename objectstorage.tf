## Deploy the Buckets

data oci_objectstorage_namespace export_namespace {
  compartment_id = var.compartment_network_ocid
}
resource oci_objectstorage_bucket export_CleanStaged_Floyd {
  access_type    = "NoPublicAccess"
  auto_tiering   = "InfrequentAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "CleanStaged_Floyd"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

resource oci_objectstorage_bucket export_CleanStaged_Manic {
  access_type    = "NoPublicAccess"
  auto_tiering   = "InfrequentAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "CleanStaged_Manic"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

resource oci_objectstorage_bucket export_CleanStaged_Piper {
  access_type    = "NoPublicAccess"
  auto_tiering   = "InfrequentAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "CleanStaged_Piper"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

resource oci_objectstorage_bucket export_FinalConsume_Floyd {
  access_type    = "NoPublicAccess"
  auto_tiering   = "Disabled"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "FinalConsume_Floyd"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Enabled"
}

resource oci_objectstorage_bucket export_FinalConsume_Manic {
  access_type    = "NoPublicAccess"
  auto_tiering   = "Disabled"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "FinalConsume_Manic"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Enabled"
}

resource oci_objectstorage_bucket export_FinalConsume_Piper {
  access_type    = "NoPublicAccess"
  auto_tiering   = "Disabled"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "FinalConsume_Piper"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Enabled"
}

resource oci_objectstorage_bucket export_RawData_Floyd {
  access_type    = "NoPublicAccess"
  auto_tiering   = "Disabled"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "RawData_Floyd"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

resource oci_objectstorage_bucket export_RawData_Manic {
  access_type    = "NoPublicAccess"
  auto_tiering   = "InfrequentAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "RawData_Manic"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

resource oci_objectstorage_bucket export_RawData_Piper {
  access_type    = "NoPublicAccess"
  auto_tiering   = "InfrequentAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "RawData_Piper"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

resource oci_objectstorage_bucket export_dataflow-logs  {
  access_type    = "NoPublicAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "dataflow-logs"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}


resource oci_objectstorage_bucket export_dataflow-warehouse  {
  access_type    = "NoPublicAccess"
  compartment_id = var.compartment_network_ocid
  freeform_tags = {
  }
  #kms_key_id = <<Optional value not found in discovery>>
  metadata = {
  }
  name                  = "dataflow-warehouse"
  namespace             = data.oci_objectstorage_namespace.export_namespace.namespace
  object_events_enabled = "false"
  storage_tier          = "Standard"
  versioning            = "Disabled"
}

 ## Upload test Pythonfile to Object Storage Bucket for Dataflow Application Deployment ##

resource "oci_objectstorage_object" "testpython" {
  namespace           = data.oci_objectstorage_namespace.export_namespace.namespace
  bucket              = oci_objectstorage_bucket.export_dataflow-logs.name
  object              = "testfile.py"
  content_language    = "en-US"
  content_type        = "text/ascii"
  content             = file("testfile.py")
  content_disposition = "attachment; filename=\"testfile.py\""
  storage_tier        = "InfrequentAccess"
}
