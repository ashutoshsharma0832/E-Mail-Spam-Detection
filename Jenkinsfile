pipeline {
    agent any

    environment {
        IMAGE_NAME = "ashutosh157/email-spam-detection"
        TAG = "latest"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t %IMAGE_NAME%:%TAG% .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    bat 'docker login -u %DOCKER_USER% -p %DOCKER_PASS%'
                }
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push %IMAGE_NAME%:%TAG%'
            }
        }

        stage('Docker Run (Test)') {
            steps {
                bat 'docker run --rm %IMAGE_NAME%:%TAG%'
            }
        }
    }
}
