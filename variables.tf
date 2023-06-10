// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  description = "(Required) (Updatable) The OCID of the root compartment."
  type        = string
}
variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = null
}

variable "compartment" {
  description = "compartment name where to create all resources"
  type        = string
  default     = null
}

variable "description" {
  description = "(Required) (Updatable) The description you assign to the policy during creation. Does not have to be unique, and it's changeable."
  type        = string
}

variable "name" {
  description = "(Required) The name you assign to the policy during creation. The name must be unique across all policies in the tenancy and cannot be changed."
  type        = string
}

variable "statements" {
  description = "(Required) (Updatable) An array of policy statements written in the policy language."
  type        = list(any)
}

variable "version_date" {
  description = "Optional) (Updatable) The version of the policy. If null or set to an empty string, when a request comes in for authorization, the policy will be evaluated according to the current behavior of the services at that moment. If set to a particular date (YYYY-MM-DD), the policy will be evaluated according to the behavior of the services on that date."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  type        = map(any)
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(any)
  default     = null
}