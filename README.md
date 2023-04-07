# TERRAFORM-CREATENETWORK
This is a terraform code to make network infrastructure .

1.Plan-Infra.jpeg is the network mapper image we designed to provision our network.
2.vpc.tf has all terraform code which is required to host any app  on AWS and take request from Internet to this app.
3.Provider.tf has cloud provider information i.e AWS in our case . We can provision multi cloud here in provider . 

Steps to run in your local machine assuming your TF and AWS Account is set 

1.terraform init - By running the terraform init command , we can download the provider AWS Api , which will help to connect to remote backend
2.terraform validate - This command will tell you that your tf file is syntax wise correct or not.
3.terraform plan - This will check the complete resource and calculate the delta with previous changes.
4.terraform apply- This will actually create and provision resources in AWS Account .
5.Go to your AWS Account by console to check the resource creation.
