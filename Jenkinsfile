pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                withCredentials([azureServicePrincipal('AzurePersonal')]) {
                   sh 'az bicep build --file ${WORKSPACE}/PolicyDefinitions/Policy-Tag.bicep --outfile PolicyTag.json'
                   sh 'ls'
                }
            }
        }
    }
}
