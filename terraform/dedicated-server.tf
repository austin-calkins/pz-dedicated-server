
resource "proxmox_vm_qemu" "pz-server" {
    
    # VM General Settings
    target_node = "pve"
    vmid = var.vmID
    name = "tf-pz-server"
    desc = "a vm dedicated to running project zomboid"

    # VM Advanced General Settings
    onboot = true 

    # VM OS Settings
    clone = var.clone-template
    cores = 4
    sockets = 1
    cpu = "host"    
    memory = 8192

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    scsihw      = "virtio-scsi-pci"
    disk {
        size    = "50G"
        storage = "local-lvm"
        type    = "scsi"
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"
    boot = "order=scsi0;ide2;net0"

    # (Optional) IP Address and Gateway
     ipconfig0 = var.ipconfig
}