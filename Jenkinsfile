pipeline {
    agent none 
    stages {
        stage('Build') { 
         agent {
                docker {
                    image 'python:2-alpine'
                }
            }
          
         
         steps{
            echo 'build started'
         
            sh "docker build -t flaskapi ."
          }
        }
        stage('run docker') { 
            
            
            steps{
              sh "docker run -p 4000:80 flaskapi"
            }
            
           
        }
    }
}