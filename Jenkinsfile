pipeline {
    agent { node { label 'agent' } }
    options {
        timeout(time: 1, unit: 'HOURS')
    }
    environment {
        user = 'vinod'
    }
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Vinod', description: 'Whats up !!!')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('Params') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }
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