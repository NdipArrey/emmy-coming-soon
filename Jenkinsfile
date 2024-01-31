
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
                echo "Building.."
                sh 'npm install'
                sh 'npm run build'

        
            }
        stage('Container'){
            steps {
                echo "Building"
                sh 'Docker login -u NdipArrey -p Nmanny06NE'
                sh 'Docker build -t EmmyrideJ:0.1.${BUILD_NUMBER} .'
                sh 'Docker tag EmmyrideJ:0.1 NdipArrey/Emmyride :0.1'
                sh 'Docker push NdipArrey/EmmyrideJ 0.1'
            }
        }
    }


}
     
    
      




 
