pipeline {
	agent { dockerfile true }
	stages {
		stage('Build') {
			steps {
				sh 'mvn -B -DskipTests clean package'
			}
		}
		
		stage ('Postman-Tests') {
			steps {
				sh 'newman run testColls/coll1.json'
			}
		}
	}
}