pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                    sh "chmod +x -R ${env.WORKSPACE}"
                    sh 'scripts/deploy1.sh'
            }
        }
    }
}