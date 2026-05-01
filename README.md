# 🚀 Production-Ready MERN DevOps Project (AWS EKS)

## 📌 Project Overview

This project demonstrates a **production-grade DevOps implementation** of a full-stack MERN (MongoDB, Express, React, Node.js) application.

The application is containerized using Docker, orchestrated with Kubernetes, and deployed on AWS EKS using Terraform. A complete CI/CD pipeline automates build and deployment.

---

## 🏗️ Architecture

```
User → LoadBalancer (AWS ELB)
        ↓
     Frontend (React - Kubernetes Service)
        ↓
     Backend (Node.js API)
        ↓
     MongoDB (Database)
```

---

## 🛠️ Tech Stack

* **Frontend:** React (Vite)
* **Backend:** Node.js, Express
* **Database:** MongoDB
* **Containerization:** Docker
* **Orchestration:** Kubernetes (EKS)
* **Infrastructure as Code:** Terraform
* **CI/CD:** GitHub Actions
* **Cloud:** AWS (EKS, VPC, S3)

---

## 📂 Project Structure

```
mern-chat-app/
│
├── backend/
├── frontend/
├── k8s/
│   ├── backend/
│   ├── frontend/
│   ├── mongodb/
│   └── namespace.yaml
│
├── terraform/
│   ├── modules/
│   │   ├── vpc/
│   │   ├── eks/
│   │   └── nodegroup/
│   └── dev/
│
└── .github/workflows/
```

---

## ⚙️ Features Implemented

✅ Dockerized frontend & backend
✅ Multi-container setup (Docker Compose)
✅ Kubernetes Deployments & Services
✅ LoadBalancer for external access
✅ MongoDB internal service
✅ AWS EKS cluster via Terraform
✅ Modular Terraform structure
✅ Remote state using S3
✅ CI/CD pipeline (GitHub Actions)
❌ Metrics Server & HPA (optional – skipped)

---

## 🚀 Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/arsh-e-noor/production-mern-devops-project.git
cd production-mern-devops-project
```

---

### 2. Docker Build & Push

```bash
docker build -t arshen00r/backend:latest ./backend
docker push arshen00r/backend:latest

docker build -t arshen00r/frontend:latest ./frontend
docker push arshen00r/frontend:latest
```

---

### 3. Terraform Deployment (AWS)

```bash
cd terraform/dev

terraform init
terraform plan
terraform apply
```

---

### 4. Connect to EKS

```bash
aws eks --region ap-south-1 update-kubeconfig --name mern-cluster
```

---

### 5. Deploy Kubernetes Resources

```bash
kubectl apply -f k8s/
```

---

### 6. Verify Deployment

```bash
kubectl get pods -n mern-app
kubectl get svc -n mern-app
```

---

## 🌐 Access Application

Frontend will be available via:

```
http://<EXTERNAL-IP>
```

Get it using:

```bash
kubectl get svc -n mern-app
```

---

## 🔁 CI/CD Pipeline

### GitHub Actions Workflows:

### 1. Application Pipeline

* Build Docker images
* Push to DockerHub
* Deploy to Kubernetes

### 2. Terraform Pipeline

* terraform init
* terraform plan
* terraform apply

---

## 🧪 Debugging Commands

```bash
kubectl get pods -n mern-app
kubectl describe pod <pod-name> -n mern-app
kubectl logs <pod-name> -n mern-app
kubectl get svc -n mern-app
```

---

## ⚠️ Notes

* Uses **free-tier friendly resources**
* MongoDB is deployed inside Kubernetes (not managed service)
* No NAT Gateway or ALB used (cost optimization)


---

## 📚 Learning Outcomes

* End-to-end DevOps pipeline implementation
* Kubernetes deployment and networking
* Terraform modular infrastructure
* AWS EKS production setup
* CI/CD automation

---

## 👩‍💻 Author

**Arshen Noor**

---

## ⭐ Conclusion

This project showcases a complete DevOps lifecycle — from development to production deployment on AWS — using modern tools and best practices.

---
