pipeline {
    agent any

    stages {

        stage('Clonar código') {
            steps {
                git 'https://github.com/RichardMoralesC/AUTOMATIZACION_API.git'
            }
        }

        stage('Ejecutar pruebas') {
            steps {
                sh 'mvn clean test'
            }
        }

        stage('Publicar reporte HTML') {
            steps {
                publishHTML([
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