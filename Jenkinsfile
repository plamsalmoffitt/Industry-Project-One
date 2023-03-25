pipeline{
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
    agent any
    
    stages{
        stage('Checkout SCM')
        {
            steps{
                
            git 'https://github.com/devopsking90/Industry-Project-One.git'
            
            }
        }
        stage('Compile')
        {
            steps{
                
                sh 'mvn compile'
            }
        }

        
    stage('UnitTesting')
        {
            steps{
                
                sh 'mvn test'
            }
        }  
    
          stage('Package')
        {
            steps{
                
                sh 'mvn package'
            }
        }
	}	
}	
