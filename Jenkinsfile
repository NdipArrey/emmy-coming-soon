
pipeline {
    agent any
        
    triggers {
        pollSCM '* * * * *'
    }
    environment {
        CI = false     //do not treat error as warnings
    }

    stages {
        stage('Build') {
             steps {
                sh 'echo "Building.." '
                sh 'npm install'
                sh 'npm run build'

             }
        }        

    

        stage('Delivery'){
            steps {
                sh 'docker login -u NdipArrey -p Nmanny06NE'
                sh 'docker build -t emmy-ride:v1 .'
                sh 'docker tag emmy-ride:v1 NdipArrey/emmy-ride:v1'
                sh 'docker push NdipArrey/emmy-ride:v1'
            }
        }
    }

}

     
    
      




 
