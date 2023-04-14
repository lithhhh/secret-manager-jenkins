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
            secret_config = readJSON text: '{}'
            echo "defina o nome de seu segredo"
            secret_config.name = input message: "qual será o noem do segredo?", ok: 'boua!'
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
