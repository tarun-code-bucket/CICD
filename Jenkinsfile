pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                withAWS(role: 'admin-access', region: 'us-east-1'){
                        sh 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}