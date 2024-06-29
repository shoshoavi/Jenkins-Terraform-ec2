pipeline {
    agent any
    stages {
        stage('Terraform Init') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: '69530e43-f60c-4ad3-aab4-5abe394bb288'
                ]]) {
                    sh 'terraform init -reconfigure'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: '69530e43-f60c-4ad3-aab4-5abe394bb288'
                ]]) {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Action') {
            steps {
                echo "Terraform action is --> ${params.action}"
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: '69530e43-f60c-4ad3-aab4-5abe394bb288'
                ]]) {
                    sh "terraform ${params.action} --auto-approve"
                }
            }
        }
    }
}
