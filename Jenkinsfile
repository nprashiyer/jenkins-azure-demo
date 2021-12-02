pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                withCredentials([azureServicePrincipal('AzurePersonal')]) {
                   sh 'az bicep build ${WORKSPACE}/PolicyDefinitions/Policy-Tag.bicep'
                }
            }
        }
    }
}
