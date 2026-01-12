// pipeline {
//     agent any

//     stages {
//         stage('Checkout Code') {
//             steps {
//                 checkout scm
//             }
//         }

//         stage('Check Python & Libraries') {
//             steps {
//                 bat '''
//                 python --version
//                 python -c "import numpy, pandas, sklearn; print('Libraries OK')"
//                 '''
//             }
//         }

//         stage('Run Spam Detection Script') {
//             steps {
//                 bat '''
//                 python Email_Spam_Detection_using_Machine_Learning.py
//                 '''
//             }
//         }
//     }
// }

pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                bat '''
                docker --version
                docker build -t email-spam-detection .
                '''
            }
        }

        stage('Docker Run') {
            steps {
                bat '''
                docker run --rm email-spam-detection
                '''
            }
        }
    }
}
