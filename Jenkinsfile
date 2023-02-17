pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'    
        sh 'podman build -f Dockerfile --isolation=chroot --tag python:daniel --security-opt label=disable --security-opt seccomp=unconfined --privileged '
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
