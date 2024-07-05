# This is an example of configuration that should be ignored to connect to proxmox

proxmox_api_url = "https://0.0.0.0:8006/api2/json"  # Your Proxmox IP Address
proxmox_api_token_id = "terraform@pam!terraform"  # API Token ID
proxmox_api_token_secret = "your-api-token-secret"
ipconfig="ip=192.168.0.103/23,gw=192.168.1.1" #the static ip address and gateway configuration for the new vm
vmID="2001" # the VM ID in proxmox
clone-template="ubuntu-cloud-template" #the pre-created template to create the VM from