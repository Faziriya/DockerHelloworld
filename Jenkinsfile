pipeline {
  environment {
    registry = "faziriya/firstrepo"
    registryCredential = 'DockerHub'
    dockerImage = ''
  }
  agent any
  stages { 
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}

/*pipeline {
    environment {
      registry = 'faziriya/firstrepo'
      registryCredential = 'DockerHub'	
      dockerImage = ''  
    }
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
        }
        stage('Deploy Image') {
          steps{
             script {
                 docker.withRegistry( '', registryCredential ) {
                 dockerImage.push()
                 }
             } 
          }
       } */
       /* stage('Docker push') {
            steps {
            echo "WORKSPACE IS $WORKSPACE"
                dir("$WORKSPACE/") {
                    script {
                        docker.withRegistry('https://index.io/v1','DockerHub'){
                            def image = docker.build('faziriya/firstrepo:latest')
                            image.push()
                        }
                    }
                }
            }
        }   */       
   /* }
}   
*/
