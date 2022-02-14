pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh 'sudo chmod -R 755 scripts/deploy1.sh'
                        sh 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}