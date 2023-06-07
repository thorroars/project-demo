pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages{
        stage("clone"){
            steps{
                git branch: 'main', url: 'https://github.com/iam-veeramalla/Jenkins-Zero-To-Hero.git'
            }
        }
        stage("build"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage("build Docker image"){
            environment {
                DOCKER_IMAGE = "vinayjadhav/vinay-app:v1.0.0"
            }
            steps{
                sh 'docker build -t ${DOCKER_IMAGE}'
            }
        }
        
    }
}