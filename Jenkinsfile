pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                    sh 'sudo chmod +x scripts/deploy1.sh'
                    sh 'scripts/deploy1.sh'
            }
        }
    }
}