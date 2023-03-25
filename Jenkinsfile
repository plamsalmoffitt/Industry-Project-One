pipeline{
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
    agent any
    
    stages{

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
