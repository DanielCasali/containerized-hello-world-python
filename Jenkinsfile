pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'    
        echo 'podman build -f Dockerfile --isolation=chroot --tag python:daniel --squash --security-opt label=disable --device /dev/fuse --security-opt seccomp=unconfined '
        sh 'export _BUILDAH_STARTED_IN_USERNS="" export BUILDAH_ISOLATION=chroot ; export STORAGE_DRIVER=vfs ; podman build -f Dockerfile --isolation=chroot --tag python:daniel --squash  --security-opt label=disable --device /dev/fuse --security-opt seccomp=unconfined'
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
