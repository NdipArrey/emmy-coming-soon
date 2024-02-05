
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
                sh 'docker login -u NdipArrey --password-stdin Nmanny06NE'
                sh 'docker build -t EmmyrideJ:0.1.${BUILD_NUMBER} .'
                sh 'docker tag EmmyrideJ:0.1 NdipArrey/Emmyride:0.1'
                sh 'docker push NdipArrey/EmmyrideJ 0.1'
            }
        }
    }

}

     
    
      




 
