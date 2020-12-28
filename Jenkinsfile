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
               docker build -t hellow:v3 .
               docker images -a
               cd ..
            """)
            }
        }
        stage('Docker build') {
            steps {
            echo"workspace is $WORKSPACE"
              }    
        }
    }
}
