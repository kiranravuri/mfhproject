pipeline {
    agent any
    tools
 stages {
        stage('git checkout'){
            steps {
               git branch: 'main', url: 'https://github.com/kiranravuri/mfhproject.git'
               slackSend channel: 'myapp', message: 'checkout success'
                  }
                             }
          stage('Build'){
              steps{
                   sh 'mvn package'
                   slackSend channel: 'myapp', message: 'build success'
                   }
                        }
          stage('Deploy'){
              steps{
                   deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tom', path: '', url: 'http://10.0.0.71:9080')], contextPath: 'testapp', war: '**/*.war'
                   slackSend channel: 'myapp', message: 'deploy success'
                   }                   
                         }
        } 
    }
