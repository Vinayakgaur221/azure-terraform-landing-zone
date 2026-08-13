# Azure Landing Zone - Terraform

Terraform project for provisioning Azure infrastructure using a parent-child module architecture.

## Architecture

- Resource Group
- Storage Account
- Virtual Network
- Subnets
- Virtual Machines
- Azure Bastion

## Terraform Structure

```text
project/
├── childmodule/
│   ├── azurerm_resourcegrp/
│   ├── azurerm_storageaccount/
│   ├── azurerm_vnet/
│   ├── azurerm_subnet/
│   ├── azurerm_vm/
│   └── azurerm_bastion/
│
└── parentmodule/
    ├── main.tf
    ├── provider.tf
    ├── variable.tf
    └── terraform.tfvars.example