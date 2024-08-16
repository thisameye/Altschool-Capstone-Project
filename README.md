# Altschool-Capstone-Project

The journey of deploying the Socks Shop microservices application began by setting up my local development environment. I started by configuring the AWS CLI to ensure I could interact seamlessly with AWS services. With the CLI in place, I proceeded to install essential tools, including Terraform, which would be the backbone of my Infrastructure as Code approach, and GitHub Actions to automate parts of the deployment process if needed.

To manage the state of my Terraform deployments, I created an S3 bucket on AWS. This bucket would serve as the centralized storage for my Terraform state files, ensuring consistency and enabling collaboration if others needed to interact with the infrastructure.

With the foundational tools in place, I cloned the Socks Shop repository to my local environment. This repository provided the base code and configuration needed to deploy the microservices architecture. But before I could bring the application to life on AWS, I needed to define the infrastructure that would support it.

I began by crafting Terraform configuration files, carefully specifying critical details such as the AWS region where the infrastructure would be provisioned, and the number of nodes and availability zones for the Kubernetes cluster. To ensure high availability and resilience, I opted for a setup with 2 nodes spread across 2 availability zones. This configuration would allow the application to withstand failures in one zone while maintaining service in the other.

Once the Terraform files were ready, I initiated the deployment process by running terraform init, which set up the necessary plugins and modules. Following this, I executed terraform apply, which kicked off the creation of the infrastructure. Within a few minutes, Terraform had orchestrated the deployment of 67 resources across my AWS environment, laying the groundwork for the Socks Shop application to be deployed and run efficiently.

Monitoring and Logging
With the infrastructure in place, the next step was to ensure that the deployed application could be monitored effectively. Monitoring is crucial for maintaining the health of the application and quickly addressing any issues that might arise.

To achieve this, I integrated Prometheus into the Kubernetes cluster. Prometheus is a powerful open-source monitoring solution that provides real-time metrics collection and alerting. I configured Prometheus to scrape metrics from the various microservices within the Socks Shop application, giving me visibility into key performance indicators such as CPU usage, memory consumption, and request rates.

In addition to Prometheus, I deployed Grafana for visualizing these metrics. Grafana's intuitive dashboards allowed me to create real-time visualizations of the application's performance, making it easy to spot trends and potential issues. I also configured Alertmanager to work with Prometheus, ensuring that I would receive notifications if any of the monitored metrics crossed predefined thresholds. This setup allowed me to stay proactive in maintaining the application's health.

Securing the Application with HTTPS
Security is a top priority in any modern application deployment. To protect the Socks Shop application and its users, I implemented HTTPS using Let’s Encrypt. This ensures that all data transmitted between the users and the application is encrypted, safeguarding it from potential eavesdropping or tampering.

The process involved setting up a Kubernetes Ingress controller configured to handle SSL/TLS termination. I then used Let’s Encrypt to automatically provision and renew the necessary certificates, ensuring the application would always be accessible over a secure connection. This added layer of security is essential for maintaining user trust and protecting sensitive information.

Network Perimeter Security
Beyond securing the application with HTTPS, I took additional steps to protect the infrastructure itself. I implemented network perimeter security rules to control access to the Kubernetes cluster and other AWS resources. These rules were designed to allow only authorized traffic, significantly reducing the attack surface and helping to prevent unauthorized access.

Handling Sensitive Information
Managing sensitive information securely is crucial in any deployment. To address this, I utilized Ansible Vault, a tool that allows for the encryption of sensitive data such as passwords, API keys, and other confidential information. By integrating Ansible Vault into the deployment process, I ensured that this sensitive data was encrypted both at rest and in transit, adding an extra layer of security to the overall setup.

Final Deployment and Testing
After setting up monitoring, securing the application, and implementing network security, it was time to deploy the Socks Shop application fully. I applied the final Kubernetes manifests, which brought the application online. I then conducted thorough testing to ensure that everything was working as expected—from the microservices communicating properly to the monitoring dashboards reflecting accurate data, and from the HTTPS connections being secure to the network security rules effectively blocking unauthorized access.

Conclusion
This project was a comprehensive exercise in deploying a modern microservices-based application using Infrastructure as Code. By focusing on automation, security, and maintainability, I was able to create a robust deployment of the Socks Shop application on AWS. The use of Terraform ensured that the infrastructure could be replicated and managed easily, while Prometheus, Grafana, and Alertmanager provided the necessary tools to monitor and maintain the application’s health. The added security measures, including HTTPS and network perimeter security, further ensured that the application and its users were protected.

This deployment not only demonstrated the power of Kubernetes and IaaC but also underscored the importance of a holistic approach to cloud-native application deployment, where automation, security, and monitoring work hand-in-hand to deliver a reliable and secure service.
