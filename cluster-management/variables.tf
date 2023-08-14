variable "ssh_key" {
  type        = string
  default     = "<your_ssh_key>"
  description = "SSH Key"
}

variable "proxmox_host" {
  type        = string
  default     = "pve"
  description = "Proxmox Hostname"
}

variable "template_name" {
  type        = string
  default     = "base"
  description = "Template"
}

variable "hostname" {
    type = string
    default = "<your_hostname>"
    description = "Server Hostname"
}

variable "password" {
    type = string
    default = "<your_password>"
    description = "Server Password"
}
