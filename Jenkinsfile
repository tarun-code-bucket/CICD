pipeline{

    agent any

    stages{
        stage('stack-execution'){
            steps{
                withAWS(credentials: 'aops_aws_creds', region: 'us-east-1'){
                        sh 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}