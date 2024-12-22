pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
        stage('Run Application') {
            steps {
                sh 'docker run -d -p 80:80 myapp'
            }
        }
    }
}


