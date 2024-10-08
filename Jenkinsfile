pipeline {
    agent any
    tools {
        maven 'maven'
        jdk 'java'
    }
    environment {
        SCANNER_HOME = tool 'sonar-scanner'
    }

    stages {
        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/devopstrainings2024/project1.git'
            }
        }
        stage("compile") {
            steps {
                sh 'mvn compile'
            }
        }
        stage("checkquality") {
            steps {
                withSonarQubeEnv('sonar-server') {
                    sh 'mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=project1key_project1new'
                }
            }
        }
        stage("qualitygate") {
            steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'SONAR_TOKEN'
                }
            }
        }
        stage("createpackage") {
            steps {
                sh 'mvn package'
            }
        }
        
        stage("convert-to-docker") {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-creds', toolName: 'docker') {
                        sh 'docker build -t nareshit2024/newimage:latest .'
                    }
                }
            }
        }
        stage("pushtohub") {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-creds', toolName: 'docker') {
                        sh 'docker push nareshit2024/newimage:latest'
                    }
                }
            }
        }
    }
}
