pipeline {
    agent any

    stages {

        stage('Clonar código') {
            steps {
                        git branch: 'main', url: 'https://github.com/RichardMoralesC/AUTOMATIZACION_API.git'

            }
        }

        stage('Ejecutar pruebas') {
            tools {
    maven 'Maven3'
}
        }

       stage('Publicar reporte HTML') {
    steps {
        publishHTML([
            allowMissing: false,
            alwaysLinkToLastBuild: true,
            keepAll: true,
            reportDir: 'target/karate-reports',
            reportFiles: 'karate-summary.html',
            reportName: 'Karate Report'
        ])
    }
}

        stage('Resultados JUnit') {
            steps {
                junit 'target/surefire-reports/*.xml'
            }
        }
    }
}