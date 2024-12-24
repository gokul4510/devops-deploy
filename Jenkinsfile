pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp:latest .'
                sh 'docker login -u gokul4510 -p dckr_pat_5_TmcNWx1E7ELge8wqn2OexO75M'
            }
        }
        stage('Tag and Push Docker Image') {
            steps {
                sh 'docker tag myapp:latest gokul4510/dev'
                sh 'docker push gokul4510/dev'
            }
        }
        stage('Run Application') {
            steps {
                sh 'docker run -d -p 80:80 gokul4510/dev'
            }
        }
    }
}



