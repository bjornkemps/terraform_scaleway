variable "organization_key" {
    default = "<organization_key>"
}

variable "secret_key" {
    default = "<secret_key>"
}

# ams1 or par1
variable "region" {
    default = "ams1"
}

variable "server_name" {
    default = "tf_scaleway"
}

# scaleway_server: "type" must be one of ["ARM64-128GB" "ARM64-16GB" "ARM64-2GB" "ARM64-32GB" "ARM64-4GB" "ARM64-64GB" "ARM64-8GB" "C2L" "C2M" "C2S" "START1-L" "START1-M" "START1-S" "START1-XS" "VC1L" "VC1M" "VC1S" "X64-120GB" "X64-15GB" "X64-30GB" "X64-60GB"]
variable "server_type" {
    default = "START1-XS" # For CentOS 7.6
    # default = "START1-S" # for Ubuntu Xenial
}

# curl -H "X-Auth-Token:<secret_key>>" https://cp-ams1.scaleway.com/images | jq
variable "image_id" {
    default = "05794ee5-c6d2-4d69-86dd-f1fc9032921d" # CentOS 7.6
    # default = "4035ca92-5292-4c6e-aa17-759fbc32765e" # Ubuntu Xenial
}
