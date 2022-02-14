pipeline{

    agent any

    stages{
        stage('stack-execution'){
            steps{
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]){
                        sh 'scripts/deploy1.sh'
                    } 
            }
        }
    }
}