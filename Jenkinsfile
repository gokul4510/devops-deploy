pipeline {
  agent any
  stages {
    stage('Clone Repository') {
      steps {
        git branch: 'dev', url: 'https://github.com/sriram-R-krishnan/devops-build.git'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh './build.sh'
      }
    }
    stage('Push to Docker Hub') {
      steps {
        withDockerRegistry([credentialsId: 'docker-hub-credentials']) {
          sh 'docker tag myapp:latest gokul4510/dev'
          sh 'docker push gokul4510/dev'
        }
      }
    }
  }
}


