pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo Hello World'
                withCredentials([azureServicePrincipal('AzurePersonal')]) {
                   sh 'az group list'
                }
            }
        }
    }
}
