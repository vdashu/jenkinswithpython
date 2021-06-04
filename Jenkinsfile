pipeline {
    agent none 
    stages {
        stage('Build') { 
         steps{
          echo 'build started'
}         
         steps{
            sh "sudo docker build -t flaskapi ."
          }
        }
        stage('run docker') { 
            
            
            steps{
              sh "sudo docker run -p 4000:80 flaskapi"
            }
            
           
        }
    }
}