pipeline {
	agent none
	stages {
		stage('Build') {
			agent {
				docker { 
					image 'maven:3-alpine'
					args -v $HOME/.m2:/root/.m2						
				}
			}
			steps {
				sh 'mvn -B -DskipTests clean package'
				sh 'ls -l'
			}
		}
		
		stage ('Postman-Tests') {
			agent {
				docker { dockerfile true }
			}
			steps {
				sh 'cd ./newman'
				sh 'newman run 	JenTest.postman_collection.json -e jentest.postman_environment.json'
			}
		}
	}
}