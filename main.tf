// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

########################
# policies
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-iam-policy"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
  compartment_id       = try(data.oci_identity_compartments.compartment[0].compartments[0].id, var.compartment_id)
}

resource "oci_identity_policy" "main" {
  #Required
  compartment_id = local.compartment_id
  description    = var.description
  name           = var.name
  statements     = var.statements

  #Optional
  defined_tags  = var.defined_tags
  freeform_tags = local.merged_freeform_tags
  version_date  = var.version_date

  timeouts {
    create = "20m"
    update = "20m"
    delete = "20m"
  }
}