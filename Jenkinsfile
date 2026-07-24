pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Check Environment') {
            steps {
                sh '''
                echo "DB_URL=$DB_URL"
                echo "DB_USERNAME=$DB_USERNAME"
                echo "SPRING_PROFILES_ACTIVE=$SPRING_PROFILES_ACTIVE"
                '''
            }
        }

        stage('Build') {
            steps {
                sh '''
                    export JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto.x86_64
                    export PATH=$JAVA_HOME/bin:$PATH

                    echo "JAVA_HOME=$JAVA_HOME"
                    java -version
                    javac -version
                    mvn -version

                    mvn clean package
                '''
            }
        }
    }
}