pipeline{

    agent any

    parameters {
        string(name: 'STACK_NAME', defaultValue: 'dbt-deployment', description: 'Enter the CloudFormation Stack Name.')
        string(name: 'PARAMETERS_FILE_NAME', defaultValue: 'dbt-deployment-stack-parameters.properties', description: 'Enter the Parameters File Name (Must contain file extension type *.properties)')
        string(name: 'TEMPLATE_NAME', defaultValue: 'dbt-deployment.yaml', description: 'Enter the CloudFormation Template Name (Must contain file extension type *.yaml)')
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
        stage('Build'){
            steps{

            }
        }
    }
}