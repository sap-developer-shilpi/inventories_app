#!/usr/bin/env groovy
node {
	stage('Checkout and Test'){
		checkout scm
		sh "rails test"
	}
	stage('Deploy'){
		echo "Deploy"
	}

}
