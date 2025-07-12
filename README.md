
# 🚀 FastAPI Rolling Deployment on Kubernetes

A lightweight, production-ready FastAPI app deployed on **Kubernetes** with **zero-downtime rolling updates** powered by **Docker Hub tagged images**. Ideal for microservices and real-world CI/CD pipelines.

---

## ✨ Features

- ⚡ **FastAPI app** served with Uvicorn
- 🐳 **Dockerized** and hosted on **Docker Hub**
- ☸️ **Kubernetes Deployment + Service**
- 🔄 **Rolling Updates** using `kubectl set image`
- 📦 Resource requests & limits to avoid noisy neighbors
- 🛠️ Simple update strategy with versioned Docker tags (`v1`, `v2`, ...)

---

## 🚀 How It Works

1. Build and push versioned Docker images to Docker Hub
2. Deploy to Minikube using K8s manifests
3. Trigger rolling update via:

```bash
kubectl set image deployment/fastapi-deployment fastapi=your-image:v2
````

✅ No downtime. No manual YAML edits. Just smooth upgrades.

---

## 🌐 Access

Once deployed, your app is accessible via:

```bash
minikube service fastapi-service
```

---

## 🧩 Ideal For

* Kubernetes beginners learning rolling updates
* FastAPI microservices in CI/CD workflows
* Testing real-world DevOps strategies locally

---

## 👨‍💻 Author

Made with ❤️ by [@dhiraj918106](https://hub.docker.com/u/dhiraj918106)


