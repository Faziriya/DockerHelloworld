pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
     stage('Docker build') {
            steps {
            sh(script: """
               cd DockerHelloworld/
               docker built -t hellow:v1 .
               docker images -a
               cd ..
            }
        }
    }
}
