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
            dir("$workspace"){
              script {
	              docker.withRegistry('https://index.docker.io/v1','Dockerhub') {
			   def image - docker.build('hellow:v3')
			   image.push()
	                  }
		     }
              }    
        }
    }
}
