def DOCKER_IMAGE_BRANCH = "0.1"
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