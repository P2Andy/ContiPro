environment {
  IMAGE_BASE = 'project-conti'
  IMAGE_TAG = "v$BUILD_NUMBER"
  IMAGE_NAME = "${env.IMAGE_BASE}:${env.IMAGE_TAG}"
  IMAGE_NAME_LATEST = "${env.IMAGE_BASE}:latest"
}

def DOCKER_IMAGE_BRANCH = "v$BUILD_NUMBER"
def GIT_COMMIT_HASH = ""

pipeline { 
    options {
        buildDiscarder(
            logRotator(
                artifactDaysToKeepStr: "",
                artifactNumToKeepStr: "",
                daysToKeepStr: "",
                numToKeepStr: "10"
            )
        )
        disableConcurrentBuilds()
    }
    triggers { pollSCM('* * * * *') }
    agent any

    stages {
	stage("Create docker image") {
	    steps {
		echo " -------===== Start building images ====-------- "
            	sh "docker build . -t project-build:${DOCKER_IMAGE_BRANCH}"
	    }
	}
    }
}
