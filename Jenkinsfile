def secret_config = [:]

pipeline {
  agent any
  stages {

    stage('Stage 2') {
      steps {
        script {
          echo "${secret_config}"
          sh "docker pull terraform:latest"
        }
      }
    } 
  }
}
