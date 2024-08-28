# Terraform 101
Repository for going over the basics of Terraform.
### Terraform installation
[Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Terraform Syntax
1. [Resource](https://github.com/doverto1/terraform-101/blob/44cfb53160dcf9074720f55dbb751084bf2edfec/s3.tf) - Describes objects intended to be managed in terraform.
2. [Data](https://github.com/doverto1/terraform-101/blob/44cfb53160dcf9074720f55dbb751084bf2edfec/data.tf) - Allows Terraform to reference objects created outside of the terraform working directory.
3. Variable - Assigned values that you can use in multiple places in your configuration code. The idea is you can change the value in one place and it changes the value where it is referenced in the configuration files. There are two types of variables:
    1. [Input Variables](https://github.com/doverto1/terraform-101/blob/44cfb53160dcf9074720f55dbb751084bf2edfec/variables.tf) - These items can be changed in the configuration and outside of the configuration files.
    2. [Local Variables](https://github.com/doverto1/terraform-101/blob/51b533794516a8f81c84e13dc6f65ef4fdebc4d5/locals.tf) - These items can only be changed in the configuration files.
4. [Output](https://github.com/doverto1/terraform-101/blob/44cfb53160dcf9074720f55dbb751084bf2edfec/output.tf) - Displays the value a Resource, Data, or Variable definition.
5. [Module](https://github.com/doverto1/terraform-101/blob/51b533794516a8f81c84e13dc6f65ef4fdebc4d5/module.tf) - Templated Resource definitions.

## Terraform Commands
### Terraform Init
Initializes the Terraform working directory. Init performs the following:
1. Downloads the provider plugins.
2. Initializes the backend state storage.
3. Prepares the working directory.
```
terraform init
```
### Terraform Plan
Shows the proposed changes between the Terraform configuration and Terraform state. It allows the user to see what is provisioned without changes.
```
terraform plan
```
### Terraform Apply
Executes the changes between the Terraform configuration and Terraform state. There is an auto-approve flag (--auto-approve) that will not prompt the user for confirmation.
```
terraform apply
```
### Terraform Validate
Terraform validate is a command used in Terraform to check the syntax and validity of Terraform configuration files.
```
terraform validate
```

### Terraform Format
Terraform fmt is used to lint the code, in regards to formatting the code.
```
terraform fmt -diff -check -recursive
```