# Project Zomboid Dedicated Server
this repo contains all the files and setup to quickly stand up a new Project Zomboid dedicated server
the project structure enables the following:
- terraform setup files to provision a ubuntu machine via proxmox
- ansible setup files to install SteamCMD and the project zomboid dedicated server files


## Terraform setup
the /terraform/templates folder contains the required variables required to spin up a new virtual machine
copy the variables.auto.tfvars into the terraform directory and add your own values for the variables

then run terraform apply to spin up a new vm for zomboid


