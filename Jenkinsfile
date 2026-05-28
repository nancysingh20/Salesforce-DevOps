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

        stage('Display Org List') {

            steps {

                sh 'sf org list'
            }
        }

        stage('Deploy to Sandbox') {

            steps {

                sh '''
                sf project deploy start \
                --source-dir force-app \
                --target-org SandboxOrg \
                --test-level NoTestRun
                '''
            }
        }
    }

    post {

        success {

            echo 'Deployment Successful!'
        }

        failure {

            echo 'Deployment Failed!'
        }

        always {

            cleanWs()
        }
    }
}
