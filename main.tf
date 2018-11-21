resource "null_resource" "iCanHazIP" {
  provisioner "local-exec" {
    command = "echo My external IP seems to be 127.0.0.1.... oh, sorry - it is ${data.extip.external_ip.ipaddress}"
  }
}

data "extip" "external_ip" {
}

data "extip" "external_ip_from_awwww" {
  resolver = "https://icanhazip.com"
}

output "external_ip" {
  value = "${data.extip.external_ip.ipaddress}"
}

output "external_ip_from_awwww" {
  value = "${data.extip.external_ip_from_awwww.ipaddress}"
}