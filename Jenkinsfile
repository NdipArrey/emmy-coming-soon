
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
                sh 'Docker login -u NdipArrey -p Nmanny06NE'
                sh 'Docker build -t EmmyrideJ:0.1.${BUILD_NUMBER} .'
                sh 'Docker tag EmmyrideJ:0.1 NdipArrey/Emmyride:0.1'
                sh 'Docker push NdipArrey/EmmyrideJ 0.1'
            }
        }
    }

}

     
    
      




 
