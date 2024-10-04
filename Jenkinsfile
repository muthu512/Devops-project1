pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('itzsmk') // DockerHub credentials ID
        KUBE_CONFIG = credentials('kube-config') // KubeConfig credentials ID
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/muthu512/Devops-project1.git'  // Replace with your repository URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("your-dockerhub-username/myapp:${env.BUILD_ID}")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    withCredentials([file(credentialsId: 'kube-config', variable: 'KUBECONFIG')]) {
                        sh 'kubectl apply -f deployment.yaml'
                        sh 'kubectl apply -f service.yaml'
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment succeeded!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}

