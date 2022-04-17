terraform {
  required_providers {
    proxmox = {
        source = "telmate/proxmox"
        version = "2.9.6"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://192.168.169.1:8006/api2/json"
    pm_user = "terraform@pve"
    pm_password = "12345678"
    pm_tls_insecure = true
    pm_timeout = 600
    pm_log_enable = true
    pm_log_file = "terraform-plugin-proxmox.log"
    pm_debug = true
    pm_log_levels = {
     _default = "debug"
     _capturelog = ""
    }
}

