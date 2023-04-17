def secret_config = [:]

pipeline {
  agent any
  stages {
    stage('get params') {
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

    stage('Install Docker') {
      steps {
          sh '''
              # Install Docker
              apt-get update
              apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
              curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
              echo \
                "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
                $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
              apt-get update
              apt-get install -y docker-ce docker-ce-cli containerd.io
              # Add the current user to the docker group so you can execute Docker without sudo
              sudo usermod -aG docker $USER
          '''
      }
  }


    stage('Stage 3') {
      steps {
        script {
          echo "${secret_config}"
          sh 'docker --version'
        }
      }
    } 
  }
}
