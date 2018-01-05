pipeline {

	agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
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