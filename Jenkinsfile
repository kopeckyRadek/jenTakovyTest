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
				sh 'mvn install dockerfile:build'
				sh 'ls -l'
			}
		}
	}
}