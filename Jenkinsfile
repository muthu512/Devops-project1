pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/muthu512/Devops-project1.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
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

