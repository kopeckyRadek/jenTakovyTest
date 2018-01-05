pipeline {
    
        stage('Postman tests') {
            agent {
                docker { 
					image 'postman/newman_ubuntu1404' 
					args '-v ./testColls:/etc/newman --collection="col1.json"'
				}
            }
            steps {
				sh 'echo "jen test"'
            }
        }
    }
}