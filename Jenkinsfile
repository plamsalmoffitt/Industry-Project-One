node {
	agent { label 'agent1' }
	def application = "abc-tech-app1"
	def dockerhubaccountid = "plamsal90"
        def jdk = "myjava"
        def maven = "mymaven"
    	


	stage('Clone repository') {
		checkout scm
	}
	 stage('Compile')
        {
            steps{
                
                sh 'mvn compile'
            }
        }
		stage('Build image') {
		app = docker.build("${dockerhubaccountid}/${application}:${BUILD_NUMBER}")
	}
		stage('Push image') {
		withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
		app.push()
		app.push("latest")
	}
			
		}
	stage('Deploy') {
		sh ("docker run -it -d -p 80:8080 ${dockerhubaccountid}/${application}:${BUILD_NUMBER}")
		
	}
	
	stage('Remove old images') {
	// remove docker pld images
	sh("docker rmi ${dockerhubaccountid}/${application}:latest -f")
		
   }
}
