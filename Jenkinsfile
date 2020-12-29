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
               docker build -t hellow .
               docker images -a
               cd ..
            """)
      
        }
       stage('Docker push') {
            steps {
            echo "WORKSPACE IS $WORKSPACE"
                dir("DockerHelloworld") {
                    script {
                        docker.withRegistry('https://index.io/v1',DockerHub'){
                            def image = docker.build('faziriya/firstrepo:latest')
                        }
                    }
                }
            }
        }        
    }
}
