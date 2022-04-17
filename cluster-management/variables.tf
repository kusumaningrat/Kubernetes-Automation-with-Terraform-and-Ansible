variable "ssh_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCwtyc3e8BwM3PYb32hWQGG2fddzfmn0EJvzEROFOg7xwogsnWtESjE5nfr+zcZTbw47j9zpdg7N/KUfv/y1CIlkbaudeveo3gRF2AfTQZ0WQUve0YAFgQ/eLv+CqlL+1e0WCDtjBfAfjC8iAF4ijkVWe2LGNXQh28YHmXoaPxGMd5VPcnNgg2uW4XAZp8M0UdThmS/CMBQA6c6WGobtfHnkErVf3/zXvn9X/Kw52Eja4re+6WxLQYtNkoZ8DYOoz1seGXlCzlbouVB/ym9Q0NIt+3101WPzL1IH8vKcmbWUQlhN+Ij0kXiNKusVs7uLn8mLx2XuH9qMcpVH78W+LxmhkFYq8meZ9ZFz659VmckFhW6Lew5VQwnTN6tfV8mBN4OwrB+DIh9tQQpg7YvPMIHDL9ruq/W9qVwt7IKSyapoLOxcNRE2WHfWjkWdT+qjzv4n7vJyA7/w6kU/wFpQPnlAtKKAPvvDGOFlcmy+Y54qwxvg0nw8NsSN+2jUUeqbLE= kusumaningrat@kusumaningrat"
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
