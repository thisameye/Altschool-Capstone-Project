# Altschool-Capstone-Project

The journey of deploying the Socks Shop microservices application began by setting up my local development environment. I started by configuring the AWS CLI to ensure I could interact seamlessly with AWS services. With the CLI in place, I proceeded to install essential tools, including Terraform, which would be the backbone of my Infrastructure as Code approach, and GitHub Actions to automate parts of the deployment process if needed.

To manage the state of my Terraform deployments, I created an S3 bucket on AWS. This bucket would serve as the centralized storage for my Terraform state files, ensuring consistency and enabling collaboration if others needed to interact with the infrastructure.

With the foundational tools in place, I cloned the Socks Shop repository to my local environment. This repository provided the base code and configuration needed to deploy the microservices architecture. But before I could bring the application to life on AWS, I needed to define the infrastructure that would support it.

I began by crafting Terraform configuration files, carefully specifying critical details such as the AWS region where the infrastructure would be provisioned, and the number of nodes and availability zones for the Kubernetes cluster. To ensure high availability and resilience, I opted for a setup with 2 nodes spread across 2 availability zones. This configuration would allow the application to withstand failures in one zone while maintaining service in the other.

Once the Terraform files were ready, I initiated the deployment process by running terraform init, which set up the necessary plugins and modules. Following this, I executed terraform apply, which kicked off the creation of the infrastructure. Within a few minutes, Terraform had orchestrated the deployment of 67 resources across my AWS environment, laying the groundwork for the Socks Shop application to be deployed and run efficiently.

