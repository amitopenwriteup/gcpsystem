

This repository contains multiple projects and experiments, including:

* **Java Servlet + Tomcat Docker Setup**
* **Frontend + Backend web application**
* **Terraform GCP Infrastructure**
* **Lab and Training Notes**

---

## 📂 Repository Structure

```
.
├── backend/                  # Java backend (Servlets, WEB-INF configs)
├── proxy/                    # Proxy-related setup
├── myproject/                # Example project folder
├── db-password.txt           # Database password (❗don’t keep secrets in repo)
├── main.tf                   # Terraform GCP infrastructure definition
├── provider.tf               # Terraform provider configuration
├── .terraform/               # Terraform local provider cache
├── Dockerfile                # Multi-stage build for Java Servlet + Tomcat
├── *.docx                    # Lab and training documentation
└── README.md                 # Project documentation
```

---

## ⚡ Java Servlet + Tomcat (Dockerized)

The backend uses a **multi-stage Docker build**:

1. **Stage 1 (Builder)**

   * Uses `openjdk:17`
   * Downloads `servlet-api.jar`
   * Compiles `YourServlet.java`

2. **Stage 2 (Tomcat Runtime)**

   * Uses `tomcat:9.0`
   * Cleans default webapps
   * Deploys frontend (`index.html`, `styles.css`, `script.js`)
   * Copies servlet `.class` and `web.xml` into `WEB-INF/`

### 🔨 Build & Run

```bash
# Build the image
docker build -t myapp .

# Run the container
docker run -p 8080:8080 myapp
```

App will be available at:
👉 [http://localhost:8080](http://localhost:8080)

---

## 🌍 Terraform GCP Setup

The repo also contains Terraform code to provision GCP resources.

### 🔧 Setup

```bash
# Initialize terraform
terraform init

# Validate config
terraform validate

# Apply infrastructure
terraform apply
```

Make sure you configure authentication:

```bash
gcloud auth application-default login
```

---

## 📚 Documentation

* **Crossplane setup.docx** – Notes for Crossplane installation
* **kindsetup.docx** – Kubernetes in Docker setup
* **lab 3.docx / lab 4.docx** – Lab exercises
* **terraform gcp provider.docx** – Provider-specific notes

---

## ⚠️ Security Notes

* Avoid committing sensitive files like `db-password.txt`.
* Use `.gitignore` to exclude secrets.
* Consider using **Vault**, **GCP Secret Manager**, or **Kubernetes Secrets**.

---

## 📌 Next Steps

* [ ] Containerize more microservices
* [ ] Expand Terraform modules for networking, IAM, storage
* [ ] Automate builds with GitHub Actions / Jenkins
* [ ] Add monitoring (Prometheus / Grafana)

---

