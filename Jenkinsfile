pipeline {

    agent any

    stages {

        stage('Checkout') {

            steps {

                echo 'Code Checkout Started'

                git branch: 'main',
                url: 'https://github.com/nancysingh20/Salesforce-DevOps.git'
            }
        }

        stage('Verify Salesforce CLI') {

            steps {

                sh 'sf --version'
            }
        }
        
    }
}

         
