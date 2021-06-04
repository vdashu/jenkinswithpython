pipeline {
    agent none 
    stages {
        stage('Build') { 
            sh "sudo docker build -t flaskapi ."
           
        }
        stage('run docker') { 
            sh "sudo docker run -p 4000:80 flaskapi"
           
        }
    }
}