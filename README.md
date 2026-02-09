Application working on 35.94.194.20:3000
This project demonstrates an end-to-end DevOps workflow where a Node.js (Express) application is containerized using Docker, deployed on AWS EC2 using Terraform, and automated using GitHub Actions CI/CD.

The goal is to showcase:

Infrastructure as Code (IaC)
Containerization
Cloud deployment
CI/CD automation
Proper technical documentation

▶️ Steps to Run the Application Locally
1️⃣ Created a application with the help of node.js
2️⃣ Install dependencies
npm install
3️⃣ Run the application
node app.js
4️⃣ Verify
Open browser:
http://localhost:3000

🐳 Steps to Build Docker Image
1️⃣ Build Docker image
docker build -t 8byte-app .
2️⃣ Run Docker container
docker run -d -p 3000:3000 8byte-app
3️⃣ Verify
http://localhost:3000

🌍 Steps to Provision Infrastructure Using Terraform
1️⃣ Navigate to terraform directory
cd terraform

2️⃣ Initialize Terraform
terraform init

3️⃣ Validate and plan
terraform plan

4️⃣ Apply configuration
terraform apply


Type yes when prompted.

5️⃣ Resources Created

VPC
Public Subnet
Internet Gateway
Route Table
Security Group (ports 22 & 3000)
EC2 Instance (Ubuntu 22.04, t2.micro)

🚀 Steps to Deploy Application on EC2
1️⃣ SSH into EC2
ssh -i your-key.pem ubuntu@<EC2-PUBLIC-IP>
2️⃣ Install and Verify Docker
docker --version
docker ps
3️⃣ Clone repository on EC2
git clone https://github.com/<your-username>/8byte-intern-assignment.git
cd 8byte-intern-assignment
4️⃣ Build Docker image
docker build -t 8byte-intern-app .
5️⃣ Run container
docker run -d -p 3000:3000 8byte-intern-app
6️⃣ Verify deployment

Open browser:

http://<EC2-PUBLIC-IP>:3000

🔁 Explanation of GitHub Actions Workflow

The GitHub Actions workflow automates the Docker build process.

Workflow Features:

Triggered on push to main branch

Builds Docker image

Verifies build success
