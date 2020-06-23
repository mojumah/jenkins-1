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

        stage('terraform init') {
            steps {
                sh 'terraform init /var/lib/jenkins/workspace/tf/jenkins-1'
            }
        }

        stage('terraform vars') {
            steps {
                sh 'cp /home/ubuntu/enc/vars.tf /var/lib/jenkins/workspace/tf/jenkins-1'
            }
        }

        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins;/bin/terraform plan /var/lib/jenkins/workspace/tf/jenkins-1'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}