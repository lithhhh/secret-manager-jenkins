pipeline {
  agent any
  parameters {
    string(name: 'param1', defaultValue: 'default', description: 'Param 1 description')
    booleanParam(name: 'param2', defaultValue: true, description: 'Param 2 description')
    choice(name: 'param3', choices: ['option1', 'option2', 'option3'], description: 'Param 3 description')
  }
  stages {
    stage('Stage 1') {
      steps {
        script {
            def secret_config = [:]

            secret_config["name"] = input message: 'Digite o nome do segredo:', parameters: [string(defaultValue: '', description: 'Nome da secret', name: 'name')]
            echo "o nome do secret será: ${secret_config["name"]}!"
            secret_config["username"] = input message: 'Digite o nome do username:', parameters: [string(defaultValue: '', description: 'username', name: 'username')]
            echo "o seu username será: ${secret_config["username"]}!"
            secret_config["password"] = input message: 'Digite o nome do password:', parameters: [string(defaultValue: '', description: 'password', name: 'password')]
            echo "o seu password será: ${secret_config["password"]}!"

            echo "${secret_config}"
        }
      }
    }
  }
}
