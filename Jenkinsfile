pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Check Python') {
            steps {
                sh '''
                python --version
                python -c "import numpy, pandas, sklearn; print('Libraries OK')"
                '''
            }
        }

        stage('Run Script') {
            steps {
                sh '''
                python Email_Spam_Detection_using_Machine_Learning.py
                '''
            }
        }
    }
}
