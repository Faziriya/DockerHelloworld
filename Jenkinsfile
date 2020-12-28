pipeline {
    agent any

    stages {
        stage('Verfify Branch') {
            steps {
                echo "$GIT_BRANCH"
            }
        }   
        stage('Docker build') {
            steps {
            sh(script: 'docker images -a')
            sh(script: """
               cd DockerHelloworld/
               docker built -t hellow:v1 .
               docker images -a
               cd ..
            """)
            }
        }       
    }
}
