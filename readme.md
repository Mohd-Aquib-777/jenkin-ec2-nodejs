# Jenkins Blue Ocean Docker Setup

This project contains a custom Jenkins Docker setup with Blue Ocean and Docker-in-Docker capabilities.

## Prerequisites

- Docker installed on your machine.
- Valid AWS PEM key (if deploying to EC2 as suggested by the terminal history, though local running is also supported).

## 1. Build the Docker Image

Build the custom image which includes the Docker CLI and necessary plugins:

```bash
docker build -t myjenkins-blueocean:2.528.3-1 .
```

## 2. Run the Container

Use the provided script or runs the following command to start Jenkins. This mounts the Docker socket to allow Jenkins to spawn sibling containers.

### Windows (PowerShell) / Linux

```bash
docker run --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --user root \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 8080:8080 \
  myjenkins-blueocean:2.528.3-1
```

> **Note**: Modify the volume mounts in `start-jenkin.sh` if you need to map specific local project directories to the workspace.

## 3. Access Jenkins

Open your browser and navigate to:
- **URL**: `http://localhost:8080`
- **Initial Password**: Check the container logs:
  ```bash
  docker logs jenkins-blueocean
  ```

## 4. Cleanup

To stop and remove the container:

```bash
# Using the provided script
./deleteContainer.sh

# Or manually
docker stop jenkins-blueocean
docker rm jenkins-blueocean
```

## Customizations

The `Dockerfile` extends the official `jenkins/jenkins:2.528.3-jdk21` image and adds:
- **Docker CLI**: For running Docker commands inside Jenkins pipelines.
- **Plugins**:
  - `blueocean`
  - `docker-workflow`
  - `json-path-api`
