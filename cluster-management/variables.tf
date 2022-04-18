variable "ssh_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJuS4tf9FUDqhnpn/rPM+NtUVW6YypDj7nLF3qshSiw5KThMbH5Wcx+PrSx0lD92MkZTozTiz0zCEJfyIqUCQxuoabbIsT+D/+EZMsAxQUyHj1ZFhhuymX4s2fgR9CjJ8F3UsiODlC/Nn8lui40jQBjF1TG083hAC0+bFr63ZRawsVseP94ZbFhii9fswG8OvR1OfZ2zo7JLG4jfdDJx8y/H8AjJMX2+0FWOkC4bN5ZTbxN5w6ZWstxsyvL7RB8sUvTwR9IdZKAwbGsvo2ydwhq+Nmw2sYYH8aYafDlMKy6It9dQ/WUuF9QrR5sYCShe2uYiy15SUvo7EWQiAQqnmr kusumaningrat@core-server"
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
    default = "ubg.local"
    description = "Server Hostname"
}

variable "password" {
    type = string
    default = "12345678"
    description = "Server Password"
}
