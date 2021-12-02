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

        stage('Test') {
            steps {
                sh 'echo testing ARM Template'
                withCredentials([azureServicePrincipal('AzurePersonal')]) {
                    sh 'New-AzDeployment -Location "eastus" -TemplateFile ${WORKSPACE}/PolicyTag.json -WhatIf'
                }
            }
        }
    }
}
