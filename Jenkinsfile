pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'    
        echo 'podman build -f Dockerfile --isolation=chroot --tag python:daniel --squash --security-opt label=disable --device /dev/fuse --security-opt seccomp=unconfined '
        sh 'podman build -f Dockerfile --isolation=chroot --tag python:daniel --squash  --security-opt label=disable --device /dev/fuse --security-opt seccomp=unconfined'
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
