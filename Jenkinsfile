pipeline{
  agent any
    stages {
      stage ('gitcheckout') {
        steps {
          git 'https://github.com/sreekanth014/sirr-eactapp-master.git'
        }
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
}


