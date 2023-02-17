pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'    
        sh 'podman build -f Dockerfile --isolation=chroot --tag python:daniel --security-opt seccomp=unconfined'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing'
        sh 'podman run python:daniel "node --version"'
            }
    }
  }
}
