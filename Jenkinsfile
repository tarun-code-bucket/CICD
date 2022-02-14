pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                    sh 'sudo chmod 655 scripts/deploy1.sh'
                    sh 'scripts/deploy1.sh'
            }
        }
    }
}