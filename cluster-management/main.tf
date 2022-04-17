resource "proxmox_vm_qemu" "kube-master" {
    name = "kube-master"
    desc = "Kubernetes Master"

    target_node = var.proxmox_host

    clone = "ubuntu-2004-cloudinit-template"
    nameserver = "192.168.169.254"
    searchdomain = "ubg.local"

    agent = 0
    os_type = "ubuntu"
    onboot = true

    # CPU
    cores = 3
    sockets = 1
    cpu = "host"

    # Memory
    memory = 4096
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"

    disk {
        slot = 0
        storage = "local-lvm"
        type = "scsi"
        size = "6G"
        iothread = 1
    }

    network {
        model = "virtio"
        bridge = "vmbr0"
        firewall = true
    }

    lifecycle {
        ignore_changes = [
            network,
        ]
    }

    ipconfig0 = "ip=192.168.169.150/24,gw=192.168.169.254"


    sshkeys = <<EOT
     ${var.ssh_key}
    EOT
}

resource "proxmox_vm_qemu" "kube-workers" {
    count = 2
    name = "kube-workers0${count.index + 1}"
    desc = "Kubernetes Workers"

    target_node = var.proxmox_host

    clone = "ubuntu-2004-cloudinit-template"
    nameserver = "192.168.169.254"
    searchdomain = "ubg.local"

    agent = 0
    os_type = "ubuntu"
    onboot = true

    # CPU
    cores = 3
    sockets = 1
    cpu = "host"

    # Memory
    memory = 4096
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"

    disk {
        slot = 0
        storage = "local-lvm"
        type = "scsi"
        size = "4G"
        iothread = 1
    }

    network {
        model = "virtio"
        bridge = "vmbr0"
        firewall = true
    }

    lifecycle {
        ignore_changes = [
            network,
        ]
    }

    ipconfig0 = "ip=192.168.169.15${count.index + 1}/24,gw=192.168.169.254"


    sshkeys = <<EOT
     ${var.ssh_key}
    EOT
}
