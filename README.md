# Terraform Remote State Demo

This repository demonstrates how to:
- Configure a **remote backend** (S3 + DynamoDB)
- Implement **state locking**
- Deploy a simple AWS infrastructure

---

## 🪜 Steps to Run

### 1️⃣ Setup the backend
```bash
cd backend-setup
terraform init
terraform apply -auto-approve
