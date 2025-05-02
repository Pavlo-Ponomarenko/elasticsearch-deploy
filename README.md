# Single-Node Elasticsearch Installation with Terraform and Ansible

This project automates the provisioning and configuration of a single-node Elasticsearch instance on AWS using **Infrastructure as Code (IaC)** principles. It leverages **Terraform** for infrastructure provisioning and **Ansible** for post-deployment configuration.

---

## 📦 Stack

- **Terraform** – Infrastructure provisioning (AWS EC2)
- **Ansible** – Elasticsearch installation and configuration
- **Git** – Version control with semantic versioning and annotated tags
- **Amazon EC2** – Hosting the Elasticsearch node

---

## 🚀 Features

- Fully automated provisioning of an EC2 instance
- Installation of Elasticsearch 7.17.x
- SSH key-based access
- Tagging and versioning with semantic Git tags
- Centralized changelog for tracking changes

---

## ⚙️ Prerequisites

- AWS CLI configured
- Terraform installed
- Ansible installed
- A valid AWS key pair
- Git installed

---

## 🛠 Usage

### 1. Clone the Repository

```bash
git clone https://github.com/your-repo/elasticsearch-iac.git
cd elasticsearch-iac
```

### 2. Deploy terraform infrastructure

```bash
cd terraform
terraform init
terraform apply
```

### 3. Install Elasticsearch node with Ansible

Create `inventory` file in ansible directory with such content:

```
[default]
{{ VM_PUBLIC_IP }} ansible_user=ec2-user ansible_ssh_private_key_file=../terraform/ssh-key.pem
```
Finally, execute the code:

```bash
cd ansible
ansible-playbook -i inventory playbook.yml
```