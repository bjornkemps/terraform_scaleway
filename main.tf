provider "scaleway" {
  organization = "${var.organization_key}"
  token        = "${var.secret_key}"
  region       = "${var.region}"
}

resource "scaleway_ip" "instance_1_ip" {
  server = "${scaleway_server.instance_1.id}"
}

resource "scaleway_server" "instance_1" {
  name  = "${var.server_name}"
  image = "${var.image_id}"
  type  = "${var.server_type}"
}
