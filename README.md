# group2-terraform-project


Terraform AWS Setup
This project sets up an AWS environment using Terraform, installs Prometheus on an EC2 instance, and configures alerts to be sent via email and Slack.

Prerequisites
-AWS Account
-Terraform Installed
-Slack Workspace

Things to Know
1. Create .tfvars File
Before you start, ensure you create a .tfvars file. This file is crucial as it contains all the necessary variables for your setup. Make sure to provide all required values in this file.

2. Provide Slack URL
For proper integration, you need to provide your Slack URL. Update the following file with your Slack URL:
/function/prometheus-slack/function.py

3. Update Region
It's important to set the appropriate AWS region for your setup. Update the region in the bootstrap.sh.tpl file accordingly.

By following these steps, you'll be all set to deploy and manage your infrastructure with ease. If you have any questions or run into issues, feel free to reach out for assistance. Happy coding!
Feel free to modify or add any additional details as necessary.
