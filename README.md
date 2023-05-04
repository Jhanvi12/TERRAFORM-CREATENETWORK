# TERRAFORM-CREATENETWORK
**Description** - Created AWS VPC with Public and Private Subnets, Internet Gateway and Route table in Terraform with sample code (this repo). Here It is shown how to create AWS VPC and its components using the Infrastructure as a code tool i.e. Terraform along with the commands. 

**Things we learnt** -
```
Create AWS VPC with Terraform (aws_vpc),
Create AWS Public Subnet with Terraform (aws_subnet),
Create AWS Private Subnet with Terraform (aws_subnet),
Create AWS Internet Gateway with Terraform (aws_internet_gateway),
Create AWS Public Routing Table with Terraform (aws_route_table),
Associate Public Route table with Terraform (aws_route_table_association),
AWS VPC Overview Created by Terraform
```

**This is a terraform code to make network infrastructure.**
```
1.**Plan-Infra.jpeg** is the network mapper image we designed to provision our network.
2.**vpc.tf** has all terraform code which is required to host any app  on AWS and take request from Internet to this app.
3.**Provider.tf** has cloud provider information i.e AWS in our case . We can provision multi cloud here in provider . 
```
**Steps to run in your local machine assuming your TF and AWS Account is set** 
```
1.terraform init - By running the terraform init command , we can download the provider AWS Api , which will help to connect to remote backend
2.terraform validate - This command will tell you that your tf file is syntax wise correct or not.
3.terraform plan - This will check the complete resource and calculate the delta with previous changes.
4.terraform apply- This will actually create and provision resources in AWS Account .
5.Go to your AWS Account by console to check the resource creation.
```
