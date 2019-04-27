output "public-ip" {
  value = "${scaleway_ip.instance_1_ip.ip}" # This will print the public IP
}
