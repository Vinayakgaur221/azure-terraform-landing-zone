# FinFlow — Loan Management Platform

**DevOps | Azure Cloud | Terraform | CI/CD | Linux**

FinFlow is a **Loan Management Platform** that enables customers to apply for loans online and track their loan status digitally.

This repository contains the **Azure infrastructure and DevOps implementation** used to support the FinFlow application.

## DevOps Responsibilities

* Provisioned and managed Azure infrastructure using **Terraform (IaC)**
* Designed reusable **Parent–Child Terraform module architecture**
* Configured Azure networking and **Linux Virtual Machines**
* Automated deployment workflows using **GitHub Actions**
* Performed application deployment and server configuration on **Ubuntu Linux**
* Used **Git, Azure CLI, Bash, PowerShell, and VS Code** for infrastructure and deployment activities

## Azure Infrastructure

* Resource Groups
* Virtual Networks & Subnets
* Network Security Groups
* Linux Virtual Machines
* Network Interfaces
* Public IPs
* Azure Bastion
* Storage Accounts & Blob Storage

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
```

## CI/CD

**GitHub → GitHub Actions → Azure → Ubuntu VM**

GitHub Actions was used to automate deployment workflows, reduce manual effort, and improve deployment consistency.

## Tech Stack

**Azure · Terraform · GitHub Actions · Linux · Git · GitHub · Azure CLI · Bash · PowerShell**



