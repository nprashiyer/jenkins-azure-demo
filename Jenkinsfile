pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo Hello World'
                withCredentials([azureServicePrincipal('credentials_id')]) {
                   sh 'az group list'
                }
            }
        }
    }
}
