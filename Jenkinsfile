pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Check Python & Libraries') {
            steps {
                bat '''
                python --version
                python -c "import numpy, pandas, sklearn; print('Libraries OK')"
                '''
            }
        }

        stage('Run Spam Detection Script') {
            steps {
                bat '''
                python Email_Spam_Detection_using_Machine_Learning.py
                '''
            }
        }
    }
}
