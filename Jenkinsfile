pipeline {
    agent any

    environment {
        // DockerHub repository
        DOCKER_IMAGE = "izazkhan23/ci-image-docker"  
        
        // DockerHub credentials ID from Jenkins Credentials Manager
        DOCKER_CREDENTIALS_ID = "dockerhub-credentials"  // This is the ID of your DockerHub credentials in Jenkins
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the Git repository containing Dockerfile and index.html
                git 'https://github.com/izazkhan458/CI-CD-docker-jenkins.git'  
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image from the Dockerfile
                    dockerImage = docker.build("${DOCKER_IMAGE}:latest")
                }
            }
        }

        stage('Test Docker Image') {
            steps {
                script {
                    // Run Nginx test inside the Docker container to ensure it's working
                    dockerImage.inside {
                        sh 'nginx -t'  
                    }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Use DockerHub credentials securely to push the image
                    docker.withRegistry('https://index.docker.io/v1/', "${DOCKER_CREDENTIALS_ID}") {
                        dockerImage.push("latest")
                    }
                }
            }
        }
    }

    post {
        always {
            // Clean up Docker image from Jenkins agent after job completion
            sh 'docker rmi ${DOCKER_IMAGE}:latest || true'
        }
    }
}
