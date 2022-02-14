pipeline{

    agent any

    stages{
        stage('stack-execution'){
            steps{
                withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sudo sh 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}