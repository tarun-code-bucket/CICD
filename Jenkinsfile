pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                    withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh "chmod +x -R ${env.WORKSPACE}"
                        sh 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}