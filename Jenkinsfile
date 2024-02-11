pipeline {
    agent { node { label 'agent' } }
    options {
        timeout(time: 1, unit: 'HOURS')
    }
    environment {
        user = 'vinod'
    }
    stages {
        stage('Init') {
            steps {
                sh'''
                    echo "Terraform Init.."
                    terraform init
                    printenv
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    echo "Terraform Plan..."
                    terraform plan
                '''
            }
        }
        stage('Apply') {
            steps {
                sh'''
                    echo "Terraform Apply..."
                    terraform apply -auto-approve
                '''
            }
        }
    }
}