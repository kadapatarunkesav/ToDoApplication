pipeline {
    agent any

    environment {
        DB_URL = 'jdbc:mysql://localhost:3306/todo_db'
        SPRING_PROFILES_ACTIVE = 'prod'
    }

    stages {

        stage('Check Environment') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'mysql-db',
                        usernameVariable: 'DB_USERNAME',
                        passwordVariable: 'DB_PASSWORD'
                    )
                ]) {

                    sh '''
                        echo "DB_URL=$DB_URL"
                        echo "DB_USERNAME=$DB_USERNAME"
                        echo "SPRING_PROFILES_ACTIVE=$SPRING_PROFILES_ACTIVE"
                    '''
                }
            }
        }

        stage('Build') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'mysql-db',
                        usernameVariable: 'DB_USERNAME',
                        passwordVariable: 'DB_PASSWORD'
                    )
                ]) {

                    sh '''
                    java -version
                    javac -version
                    mvn -version
                        mvn clean package
                    '''
                }
            }
        }
    }
}