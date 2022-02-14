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
        choices: ['create-changeset', 'execute-changeset', 'deploy-stack', 'delete-stack'],
        description: 'CloudFormation Actions'
        )
        booleanParam(name: 'TOGGLE', defaultValue: false, description: 'Are you sure you want to perform this action?')
    }

    stages{
        stage('action') {
            when {
                expression { params.ACTION == 'create-changeset' || params.ACTION == 'execute-changeset' || params.ACTION == 'deploy-stack' || params.ACTION == 'delete-stack'}
            }
            steps {
                ansiColor('xterm') {
                    script {
                        if (!params.TOGGLE) {
                            currentBuild.result = 'ABORTED' //If you do not set the toggle flag to true before executing the build action, it will automatically abort the pipeline for any action.
                            } else {
                                if (params.ACTION == 'create-changeset') {
                                    env.CHANGESET_MODE = false
                                } else {
                                    env.CHANGESET_MODE = true
                                }
                            }
                        }
                    }
                }
        }
        stage('stack-execution'){
            steps{
                    withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh "chmod +x -R ${env.WORKSPACE}"
                        sh 'scripts/deploy1.sh ${STACK_NAME} ${PARAMETERS_FILE_NAME} ${TEMPLATE_NAME} ${CHANGESET_MODE} ${REGION}'
                    } 
            }
        }
        stage('create-changeset'){
            steps{
                    withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh "chmod +x -R ${env.WORKSPACE}"
                        sh 'scripts/deploy1.sh ${STACK_NAME} ${PARAMETERS_FILE_NAME} ${TEMPLATE_NAME} ${CHANGESET_MODE} ${REGION}'
                    } 
            }
        }
    }
}