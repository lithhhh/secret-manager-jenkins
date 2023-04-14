pipeline{
    agent{
        label "commons"
    }
    stages{
        stage("parameters of secret"){
            json = readJSON text: '{}'

            steps{
                json.name = input message: 'digite o nome do segredo', parameters: [text('nome')]
            }
            echo "${json}"
        }   
    }
}