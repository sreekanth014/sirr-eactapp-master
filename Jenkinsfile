pipeline {
    agent any

    tools {
        // Use the NodeJS tool you configured in Jenkins
        nodejs 'react' // 'nodejs' should match the name you set in Global Tool Configuration
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Clone the repository
                git 'https://github.com/sreekanth014/sirr-eactapp-master.git'            }
        }
        stage('Install Dependencies') {
            steps {
                // Install npm dependencies
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                // Build the React application
                sh 'npm run build'
            }
        }
    }

    post {
        success {
            echo 'Build successful!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}










