pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                java -version
                javac -version
                mvn -version
                echo $JAVA_HOME
                mvn clean package
                '''
            }
        }
    }
}