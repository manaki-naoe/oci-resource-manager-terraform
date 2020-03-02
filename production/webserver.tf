variable "web_instance_count" {
  default = "1"
}
variable "web_instance_display_name" {
  default = "test-web"
}
variable "web_source_ocid" {
  default = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaiqzuf2mfrur6ilfx7fueaafsb3blxxs7rhhkowaaxbg5n4x3x7mq"
}
variable "web_subnet_ocids" {
  type = "list"
}
variable "web_block_storage_sizes_in_gbs" {
  type = "list"
}

module "web_instance" {
  source                     = "../modules/instance"

  instance_count             = "${var.web_instance_count}"
  compartment_ocid           = "${var.compartment_ocid}"
  instance_display_name      = "${var.web_instance_display_name}"
  source_ocid                = "${var.web_source_ocid}"
  subnet_ocids               = "${var.web_subnet_ocids}"
  ssh_authorized_keys        = "${var.ssh_authorized_keys}"
  block_storage_sizes_in_gbs = "${var.web_block_storage_sizes_in_gbs}"
}