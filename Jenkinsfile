pipeline {
	agent {
		docker { 
			image 'postman/newman_ubuntu1404' 
			args '-v ./testColls:/etc/newman --collection="col1.json"'
		}
	}

    stages {
        stage('Postman') {
            steps {
				sh 'echo "jen test"'
            }
        }
    }
}