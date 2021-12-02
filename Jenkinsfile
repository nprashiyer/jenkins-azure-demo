pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo Hello World'
                sh 'echo $PWD'
                sh 'echo ${WORKSPACE}'
                sh 'ls ${WORKSPACE}'
                withCredentials([azureServicePrincipal('AzurePersonal')]) {
                   sh 'az group list'
                }
            }
        }
    }
}
