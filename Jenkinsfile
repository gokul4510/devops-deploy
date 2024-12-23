pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def buildCommand = "docker build -t myapp:latest ."
                    def loginCommand = "docker login -u username -p dckr_pat_5_TmcNWx1E7ELge8wqn2OexO75M"
                    
                    println "Executing: ${buildCommand}"
                    def buildOutput = buildCommand.execute().text
                    println buildOutput
                    
                    println "Executing: ${loginCommand}"
                    def loginOutput = loginCommand.execute().text
                    println loginOutput
                }
            }
        }
        stage('Tag and Push Docker Image') {
            steps {
                script {
                    def tagCommand = "docker tag myapp:latest gokul4510/myapp:latest"
                    def pushCommand = "docker push gokul4510/myapp:latest"
                    
                    println "Executing: ${tagCommand}"
                    def tagOutput = tagCommand.execute().text
                    println tagOutput
                    
                    println "Executing: ${pushCommand}"
                    def pushOutput = pushCommand.execute().text
                    println pushOutput
                }
            }
        }
        stage('Run Application') {
            steps {
                script {
                    def runCommand = "docker run -d -p 80:80 gokul4510/myapp:latest"
                    
                    println "Executing: ${runCommand}"
                    def runOutput = runCommand.execute().text
                    println runOutput
                }
            }
        }
    }
}


