### Terraform installation
[Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Terraform Syntax
1. Resource - Describes objects intended to be managed in terraform.
2. Data - Allows Terraform to reference objects created outside of the terraform working directory.
3. Variable - Assigned values that you can use in multiple places in your configuration code. The idea is you can change the value in one place and it changes the value where it is referenced in the configuration files. There are two types of variables:
    1. Input Variables - These items can be changed in the configuration and outside of the configuration files.
    2. Local Variables - These items can only be changed in the configuration files.
4. Output - Displays the value a Resource, Data, or Variable definition.
5. Module - Templated Resource definitions.

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