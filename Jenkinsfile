
pipeline {
    agent any
        
    triggers {
        pollSCM '* * * * *'
    }
    environment {
        CI = false //do not treat error as warnings
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh 'npm install'
                sh 'npm run build'

        
            }
        }
    }

}     
    
      




 