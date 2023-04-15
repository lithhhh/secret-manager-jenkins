import groovy.json.JsonBuilder

def secret_config = new JsonBuilder()


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
            secret_config.name = input message: 'Digite seu nome', parameters: [string(defaultValue: '', description: 'Nome do usuário', name: 'name')]
            echo "Olá, ${secret_config.name}!"
            echo secret_config.toString()
        }
      }
    }
    stage('Stage 2') {
      steps {
        echo "Param 1: ${params.param1}"
        echo "Param 2: ${params.param2}"
        echo "Param 3: ${params.param3}"
        // Seu script aqui
      }
    }
  }
}
