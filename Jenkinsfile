pipeline {
	agent {
		docker { 
			image 'postman/newman_ubuntu1404' 
			args '-v ./testColls:/etc/newman --collection="col1.json"'
		}
	}

    stages {
		stage ('Build') {
			steps {
				sh 'echo "Build"'
			}
		}
		stage ('Test') {
			steps {
				sh 'echo "Test"'
			}
		}
		stage ('mezi') {
			steps {
				sh 'echo "mezi"'
			}
		}
        stage('Postman tests') {
            steps {
				sh 'echo "jen test"'
            }
        }
    }
}