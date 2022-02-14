pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                    sh 'echo ${env.WORKSPACE}'
                    sh 'scripts/deploy1.sh'
            }
        }
    }
}