data "external" "valid_ip_addr" {
  program = ["python", "${path.module}/test.py"]

  query = {
    ip = var.ip_addr
  }
}

variable "ip_addr" {}

output "result" {
  value = data.external.valid_ip_addr
}
