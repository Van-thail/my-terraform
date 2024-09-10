pipeline {
    agent any
environment {
    PATH = "/path/to/your/command:${env.PATH}"
}
sh '/usr/local/bin/mycommand'
sh 'env'


    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }

        stage('Test') {
            steps {
                script {
                    if (fileExists('build/index.html')) {
                        echo 'build/index.html exists.'
                    } else {
                        error 'build/index.html does not exist!'
                    }
                }
                sh 'npm test'
            }
        }
    }

    post {
        always {
            junit 'test-results.xml' // Replace this with the appropriate test result file if needed
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
        }
    }
}
