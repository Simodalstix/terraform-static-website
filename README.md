Terraform Static Website
This project provisions a static website on AWS using Terraform, applying Infrastructure as Code (IaC) principles to deploy and configure an S3 bucket for public website hosting. It also outputs the website's URL for easy access.

Purpose
This repository demonstrates how to declaratively manage cloud resources using Terraform. It provides a lightweight, cost-effective solution for hosting static web content without relying on traditional servers or complex deployments.

Why It's Useful
Infrastructure as Code: The entire infrastructure is defined and version-controlled in code.

Repeatability: Environments can be recreated consistently across teams or stages.

Automation Friendly: Easily integrates with CI/CD pipelines.

Scalable and Cost-Efficient: Uses S3 for serverless, highly available static site hosting.

Modular Design: Follows clean Terraform practices with separate main.tf, variables.tf, and outputs.tf.

DevOps Alignment
This project reflects key DevOps values:

Automation: Infrastructure is provisioned automatically and reliably.

Version Control: All changes to infrastructure are tracked through Git.

Simplicity and Speed: Easily extendable and adaptable for frontend or documentation hosting.

Post-deploy Actions: Encourages scripting and automation for content delivery (e.g., uploading files to S3).

Required: Upload index.html
Terraform provisions the infrastructure, but you must manually or programmatically upload your index.html (and optionally error.html) to the S3 bucket to make the website functional.

Example:
bash
Copy
Edit
aws s3 cp index.html s3://your-bucket-name/
You can find the bucket name and website endpoint in the Terraform output.

Getting Started
Clone the repository:

bash
Copy
Edit
git clone https://github.com/Simodalstix/terraform-static-website.git
cd terraform-static-website
Initialize Terraform:

bash
Copy
Edit
terraform init
Review the plan:

bash
Copy
Edit
terraform plan
Apply the configuration:

bash
Copy
Edit
terraform apply
Upload index.html to the provisioned S3 bucket:

bash
Copy
Edit
aws s3 cp index.html s3://$(terraform output -raw bucket_name)/
Open the website using the URL provided in the Terraform output.

Requirements
Terraform CLI

AWS CLI with credentials configured

An AWS account with S3 permissions

Future Enhancements
Automate index.html upload via a null_resource or deployment script

Add CloudFront distribution and HTTPS via ACM

Route custom domain traffic with Route 53

Integrate with CI/CD for automatic deployment of frontend content

License
This project is open-source and available under the MIT License.
