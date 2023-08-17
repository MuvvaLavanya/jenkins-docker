pipeline {
    agent any

    stages{
             stage('Build, Test, and Generate Coverage') {
                    steps {
                        bat "mvn clean verify"
                        bat "mvn jacoco:prepare-agent"
                    }
                }
             stage('SonarQube Analysis') {
                         steps {
                             bat "mvn sonar:sonar -Dsonar.projectKey=jenkins-docker -Dsonar.projectName='jenkins-docker' -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_23e866143be49e0352f8aeaaa1a2651b418c78d8"
                         }
                         }
    }
}