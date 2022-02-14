pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        bash 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}