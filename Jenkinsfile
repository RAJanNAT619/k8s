pipeline {
    agent any
    stages {
        stage("Stage 1: Pull the code from GitHub") {
            steps {
                git("https://github.com/RAJanNAT619/k8s.git")
            }
        }
        stage("Stage 2: Build Docker image") {
            steps {
                sh("sudo docker build -t natraj619/practice1:latest /var/lib/jenkins/workspace/jen_proj")
                sh("sudo docker tag natraj619/practice1:latest natraj619/practice1:${BUILD_NUMBER}")
            }
        }
        stage("Stage 3: Push the Docker image") {
            steps {
                sh("sudo docker image push natraj619/practice1:latest")
                sh("sudo docker image push natraj619/practice1:${BUILD_NUMBER}")
            }
        }
        stage("Stage 4: Deploy on Kubernetes") {
            steps {
                sh("sudo kubectl apply -f /var/lib/jenkins/workspace/jen_proj/pod.yaml")
                sh("sudo kubectl rollout restart deployment loadbalancer-pod")
            }
        }
    }
}
