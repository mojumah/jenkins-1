pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'rm -r *;git clone https://github.com/mojumah/jenkins-1.git'
            }
        }

        stage('terraform vars') {
            steps {
                sh 'cp /home/ubuntu/enc/vars.tf ./jenkins'
            }
        }

        stage('terraform init') {
            steps {
                sh '/bin/terraform init ./jenkins'
            }
        }

        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins;/bin/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
