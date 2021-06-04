pipeline {
    agent none 
    stages {
        stage('Build') { {
             agent none
            
           
        }
        steps{
         sh "sudo docker build -t flaskapi ."
       }
}
        stage('run docker') { 
 {
             agent none
            
           
        }
        steps{
         sh "sudo docker run -p 4000:80 flaskapi"
       }
            
           
        }
    }
}