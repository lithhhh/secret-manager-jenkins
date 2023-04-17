def secret_config = [:]

pipeline {
  agent 'docker'
  stages {
    stage('Stage 1') {
      steps {
        script {
            secret_config["name"] = input message: 'Digite o nome do segredo:', parameters: [string(defaultValue: '', description: 'Nome da secret', name: 'name')]
            echo "o nome do secret será: ${secret_config["name"]}!"
            secret_config["username"] = input message: 'Digite o nome do username:', parameters: [string(defaultValue: '', description: 'username', name: 'username')]
            echo "o seu username será: ${secret_config["username"]}!"
            secret_config["password"] = input message: 'Digite o nome do password:', parameters: [string(defaultValue: '', description: 'password', name: 'password')]
            echo "o seu password será: ${secret_config["password"]}!"
        }
      }
    }

    stage('Stage 2') {
      steps {
        script {
          echo "${secret_config}"
          docker.run('hello-world')
        }
      }
    } 
  }
}
