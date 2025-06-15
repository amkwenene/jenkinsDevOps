pipeline {
    agent any

        tools {
            maven 'maven_3_5_0' // Adjust to your Jenkins Maven installation name
        // jdk 'JDK 17'        // Or use JDK 11, based on your project
        }

        stages {
            stage('Checkout') {
                steps {
                    git branch: 'master', url: 'https://github.com/amkwenene/jenkinsDevOps.git'
                }
            }

            stage('Build') {
                steps {
                    sh 'mvn clean package -DskipTests'
                }
            }

            stage('Build docker image'){
                steps{
                    script{
                        sh 'docker build -t amkwenene/jenkins-dev-ops .'
                    }
                }
            }
            stage('Push image to Hub') {
            steps {
                    script {
                    sh '''
                        echo "$TOKEN" | docker login -u amkwenene --password-stdin
                        docker push amkwenene/jenkins-dev-ops
                    '''
                        }
                }
            }

        }
        post {
                success {
                    echo 'Build successful.'
                }
                failure {
                    echo 'Build failed.'
                }
            }

    }
