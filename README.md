# Terraform (Using for_each)

In this project we are creating

3 resource groups:
- Dev-RG in East US
- QA-RG in West US
- Prod-RG in Central US

1 vnet:
- Dev-Vnet with address_range 10.0.0.0/16

3 subnets:
- Web-Subnet with address_prefixes 10.0.1.0/24
- App-Subnet with address_prefixes 10.0.2.0/24
- DB-Subnet with address_prefixes 10.0.3.0/24

by using Terraform and utilizing for_each.

We are also outputing important values of these resources.
