
pipeline {
    agent any
        
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                npm install
                npm run build

                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh 'npm run test
                    
                '
            }
        }
    }
}       

