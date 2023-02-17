pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'    
        sh 'podman build -f Dockerfile --tag python:daniel'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing'
        sh 'podman images'
            }
    }
  }
}
