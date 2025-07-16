## 🏗️ Terraform on AWS — Deploying WordPress via Infrastructure as Code

### 📘 Overview
This project showcases how to use **Terraform** to provision and manage AWS infrastructure through an automated, reusable IaC approach. As part of an AWS workshop, the deployment focuses on building a scalable **WordPress** application integrated with **EC2**, **VPC**, **IAM**, **S3**, and a **MySQL database via RDS**. The exercise highlights best practices in cloud architecture, security, and modular configuration using Terraform.

---

### 🎯 Objectives
- Master Terraform fundamentals: providers, resources, state files, and variables
- Provision infrastructure via modular configurations
- Create IAM roles and policies following least-privilege principles
- Set up networking layers with VPC, subnets, route tables, NATs, and internet gateways
- Secure EC2 instance traffic using security groups
- Host WordPress static assets in S3
- Configure Amazon RDS for MySQL database hosting
- Generate Terraform outputs for key application components
- Validate successful WordPress deployment
- Inspect and interpret Terraform state files for infrastructure drift and consistency

---

### 🧰 Tools & Technologies Used
| Tool                   | Description                                          |
|------------------------|------------------------------------------------------|
| Terraform              | Core infrastructure automation tool                  |
| AWS EC2                | WordPress hosting via virtual machines               |
| AWS VPC                | Virtual network isolation and traffic segmentation   |
| AWS IAM                | Role-based access and permission management          |
| AWS S3                 | Static asset storage and hosting                     |
| Amazon RDS             | Managed MySQL database service                       |
| Amazon EFS             | Shared storage for EC2 instances                     |
| Amazon SSM             | Systems management for infrastructure and software   |
| AWS Secrets Manager    | Secure credentials and database password storage     |
| Amazon ACM             | Certificate provisioning for secure HTTP (HTTPS)     |
| Amazon CloudFront      | CDN integration for fast WordPress delivery          |

---

### 📁 Project Structure
```
terraform-wordpress/
├── main.tf
├── variables.tf
├── outputs.tf
├── userdata/
│   ├── staging-efs.sh
│   ├── staging-wordpress.sh
├── README.md
```

---

### 📸 Architecture Overview
<img width="1373" height="722" alt="Architecture Diagram" src="https://github.com/user-attachments/assets/bb948008-55ed-47d3-9db1-999511516a89" />

---

### 🔧 Setup & Installation
```bash
# Clone the project repository
git clone https://github.com/yourusername/terraform-wordpress.git
cd terraform-wordpress

# Initialize Terraform modules
terraform init

# Preview infrastructure changes
terraform plan

# Apply infrastructure deployment
terraform apply
```

> 💡 **Note:** Ensure your AWS CLI is configured and your credentials have appropriate IAM permissions. This demo used administrative access for provisioning.

---

### 🧠 Key Learnings
- Strengthened understanding of AWS infrastructure via modular Terraform scripting
- Practiced secure networking through VPC subnets, NAT gateways, and security groups
- Created IAM profiles for scoped EC2 and S3 access
- Automated provisioning of WordPress infrastructure
- Applied best practices in state file inspection and resource validation

---

### 📊 Terraform Outputs & Verification

#### 📌 IAM Resource Creation
<img src="https://github.com/user-attachments/assets/3513a800-904e-4777-a9de-039fcfe190b1" alt="IAM Creation" />

#### 🌐 VPC & Networking
- VPC Creation  
  <img src="https://github.com/user-attachments/assets/dfd4d739-e0f2-42c5-b969-cb39ea583deb" alt="VPC Creation" />
  <img src="https://github.com/user-attachments/assets/b80f2406-6ee3-49fa-b83e-d248e2620c6e" alt="VPC Details" />

- Subnet Configuration  
  <img src="https://github.com/user-attachments/assets/a0fc3f64-616f-45b1-a4a2-c6803c838e54" alt="Subnets" />

- Route Tables  
  <img src="https://github.com/user-attachments/assets/551d391c-ccc5-4cf8-a836-5cfd2c1745c6" alt="Route Tables" />

- Internet Gateway  
  <img src="https://github.com/user-attachments/assets/0409a418-e7ad-471f-9f99-d23355e8eef6" alt="Internet Gateway" />

- NAT Gateway  
  <img src="https://github.com/user-attachments/assets/5ebc2897-9a24-4bbb-a4d1-3f1bacbb6037" alt="NAT Gateway" />

#### 🔐 Security Resources
- Security Groups  
  <img src="https://github.com/user-attachments/assets/c48507ba-427a-4e10-b5dd-2ae70b10a7fa" alt="Security Group Plan" />
  <img src="https://github.com/user-attachments/assets/2833fa7e-ac90-412e-8601-0d05ee3813c0" alt="Security Group Details" />

- VPC Endpoints  
  <img src="https://github.com/user-attachments/assets/269dae80-c71e-4e3e-880a-d2226a2f25bf" alt="Endpoints" />

#### 📦 Application Outputs
<img src="https://github.com/user-attachments/assets/d0eaa461-65aa-459d-8abb-a1ed3052d1bc" alt="Terraform Application Output" />

#### 🌐 Application Verification
<img src="https://github.com/user-attachments/assets/beb6866f-b608-4b73-989d-e70d1a98c378" alt="WordPress Webpage" />

---

### 📄 License
This project is licensed under the [MIT License](LICENSE).

---
