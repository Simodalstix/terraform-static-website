# Terraform Static Website

I created this project to provision a static website on AWS using Terraform. It applies Infrastructure as Code (IaC) principles to deploy and configure an S3 bucket for public website hosting. The setup outputs the website's URL upon completion for easy access.

## Purpose

This repository demonstrates how to declaratively manage cloud resources using Terraform. It offers a simple and cost-effective solution for hosting static web content without the need for traditional servers or complex deployments.

## Why It's Useful

- **Infrastructure as Code**: I defined and version-controlled the entire infrastructure in code.
- **Repeatability**: I can recreate environments consistently across teams or stages.
- **Automation Friendly**: The setup integrates easily with CI/CD pipelines.
- **Scalable and Cost-Efficient**: It uses Amazon S3 for serverless, highly available static site hosting.
- **Modular Design**: I followed clean Terraform practices by separating concerns into `main.tf`, `variables.tf`, and `outputs.tf`.

## DevOps Alignment

This project aligns with key DevOps principles:

- **Automation**: I provision infrastructure automatically and reliably using Terraform.
- **Version Control**: All infrastructure changes are tracked in Git.
- **Speed and Simplicity**: The configuration supports fast, cost-efficient deployments.
- **Extendable Workflows**: The structure encourages scripting and future CI/CD integrations.

## Required: Upload `index.html`

Terraform provisions the infrastructure, but I must upload the static HTML content (such as `index.html` and optionally `error.html`) to the S3 bucket manually or programmatically.

### Example:

```bash
aws s3 cp index.html s3://$(terraform output -raw bucket_name)/
```

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Simodalstix/terraform-static-website.git
   cd terraform-static-website
   ```

2. **Initialize Terraform:**

   ```bash
   terraform init
   ```

3. **Review and apply the configuration:**

   ```bash
   terraform plan
   terraform apply
   ```

4. **Upload your HTML file:**

   ```bash
   aws s3 cp index.html s3://$(terraform output -raw bucket_name)/
   ```

5. **Access the website** using the URL provided in the Terraform output.

## Requirements

- Terraform CLI
- AWS CLI with credentials configured
- An AWS account with permission to manage S3 resources

## Optional: Automate with GitHub Actions

I can optionally add a GitHub Actions workflow to automatically deploy infrastructure and upload HTML content whenever I push to the `main` branch.

## Future Enhancements

- Automate HTML upload via CI/CD
- Add CloudFront and ACM for HTTPS support
- Add custom domain support via Route 53
- Include a full GitHub Actions workflow for end-to-end deployment

## License

MIT
