pipeline{
    agent any

    parameters {
        string(name: 'STACK_NAME', defaultValue: 'aops-dbt-stack', description: 'Enter the CloudFormation Stack Name.')
        string(name: 'PARAMETERS_FILE_NAME', defaultValue: 'dbt-deploy-stack.properties', description: 'Enter the Parameters File Name (Must contain file extension type *.properties)')
        string(name: 'TEMPLATE_NAME', defaultValue: 'EC2-Instance.yaml', description: 'Enter the CloudFormation Template Name (Must contain file extension type *.yaml)')
        credentials(name: 'CFN_CREDENTIALS_ID', defaultValue: '', description: 'AWS Account Role.', required: true)
        choice(
        name: 'REGION',
        choices: [
            ' ',
            'us-east-1',
            'us-east-2'
            ],
        description: 'AWS Account Region'
        )
        choice(
        name: 'ACTION',
        choices: ['deploy-stack', 'delete-stack'],
        description: 'CloudFormation Actions'
        )
    }

    stages{
        stage('stack-execution'){
            steps{
                    withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh "chmod +x -R ${env.WORKSPACE}"
                        sh 'scripts/deploy1.sh ${STACK_NAME} ${PARAMETERS_FILE_NAME} ${TEMPLATE_NAME} ${REGION}'
                    } 
            }
        }
        stage('create-changeset'){
            steps{
                    withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh "chmod +x -R ${env.WORKSPACE}"
                        sh 'scripts/deploy1.sh ${STACK_NAME} ${PARAMETERS_FILE_NAME} ${TEMPLATE_NAME} ${REGION}'
                    } 
            }
        }
    }
}