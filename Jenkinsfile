pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS = credentials('itzsmk@gmail.com') // Replace with your Docker Hub credentials ID
        KUBE_CONFIG = credentials('kube-config') // Your kubeconfig secret file
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/muthu512/Devops-project1.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Define Docker build context
                    def customImage = docker.build("your-docker-image-name:${env.BUILD_ID}")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS) {
                        customImage.push()
                    }
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Load KubeConfig
                    withKubeConfig([credentialsId: 'kube-config', context: 'kube-config']) {
                        sh 'kubectl apply -f k8s/deployment.yaml'
                        sh 'kubectl apply -f k8s/service.yaml'
                    }
                }
            }
        }
    }
    post {
        always {
            echo 'Cleanup and notifications...'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
