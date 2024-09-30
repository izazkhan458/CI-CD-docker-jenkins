# Docker-Jenkins Integration for Cloud DevOps Portfolio

This project demonstrates the integration of **Docker** and **Jenkins** to automate the build and deployment of a simple static website using **Nginx**. The website showcases the portfolio of a Cloud DevOps Engineer. The repository contains a Dockerfile to create a Docker image for the static HTML page and a Jenkinsfile to automate the process of building, testing, and pushing the Docker image to DockerHub.

## Project Overview

- **Docker**: Used to containerize the static website using an Nginx web server.
- **Jenkins**: Automates the build, test, and deployment pipeline using a Jenkinsfile.
- **Nginx**: Serves the static HTML page as a simple web server.
- **DockerHub**: Used to store the Docker image of the static website.

## Features

- Automated Docker image build with **Nginx** serving a simple HTML page.
- Integration with **Jenkins** to automate the CI/CD pipeline.
- Docker image push to DockerHub.

## Project Structure

- `index.html`: The main HTML file for the portfolio website.
- `Dockerfile`: Docker configuration to build the image with Nginx and the HTML file.
- `Jenkinsfile`: Jenkins pipeline script for automating the build, test, and push steps.
  
## Getting Started

### Prerequisites

Make sure you have the following tools installed on your system:

- [Docker](https://www.docker.com/)
- [Jenkins](https://www.jenkins.io/) (or access to a Jenkins server)
- [Git](https://git-scm.com/)

### Cloning the Repository

To get started, clone this repository to your local machine:

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
