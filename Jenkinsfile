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

     steps {
       
          container("jenkins-agent") {
            withCredentials([[
              $class: 'AmazonWebServicesCredentialsBinding',
              credentialsId: "${CFN_CREDENTIALS_ID}",
              accessKeyVariable: 'AWS_ACCESS_KEY_ID',
              secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                sh 'scripts/deploy-stack.sh ${STACK_NAME} ${PARAMETERS_FILE_NAME} ${TEMPLATE_NAME} ${CHANGESET_MODE} ${REGION}'
            }
          }
        
      }
    }
}