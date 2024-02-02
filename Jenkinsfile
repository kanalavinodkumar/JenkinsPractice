    stages {
pipeline {
    agent { node { label 'dev' } }

        stage('Init') {
            steps {
                sh'''
                    echo "Terraform Init.."
                    terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    echo "Terraform Plan.."
                    terraform plan
                '''
            }
        }
        stage('Apply') {
            steps {
                sh'''
                    echo "Terraform Apply.."
                    terraform apply -auto-approve
                '''
            }
        }
    }
}