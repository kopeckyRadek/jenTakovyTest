pipeline {

	agent none 
	
    stages {
        stage('Build') {             
			agent {
				docker {
					image 'maven:3-alpine' 
					args '-v /root/.m2:/root/.m2' 
				}
			}
			steps {
                sh 'mvn -B -DskipTests clean package' 
				sh 'echo $DOCKER_HOST'
            }
        }
        stage('Postman tests') {
			agent {
				docker {
					image 'postman/newman_ubuntu1404'
					args '-v testColls:/etc/newman'
				}
			}
            steps {
				sh 'newman run testColls/coll1.json'
            }
        }
    }
}