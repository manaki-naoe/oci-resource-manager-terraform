variable "vcn_display_name" {
  default = "testVCN"
}
variable "vcn_cidr" {
  default = "10.0.0.0/16"
}
variable "vcn_dns_label" {
  default = "testVCN"
}

module "vcn" {
  source           = "../modules/vcn"

  compartment_ocid = "${var.compartment_ocid}"
  vcn_display_name = "${var.vcn_display_name}"
  vcn_cidr         = "${var.vcn_cidr}"
  vcn_dns_label    = "${var.vcn_dns_label}"
}