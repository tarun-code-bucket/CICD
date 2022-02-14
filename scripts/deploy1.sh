#!/bin/bash

# Please ensure that you have the correct AWS credentials configured.
# Enter the name of the stack, the parameters file name, the template name, then changeset condition, and finally the region name.




if [[ "cloudformation/"$TEMPLATE_NAME != *.yaml ]]; then
    echo "CloudFormation template $TEMPLATE_NAME does not exist. Make sure the extension is *.yaml and not (*.yml)"
    exit 0
fi

if [[ "parameters/"$PARAMETERS_FILE_NAME != *.properties ]]; then
    echo "CloudFormation parameters $PARAMETERS_FILE_NAME does not exist"
    exit 0
fi

aws cloudformation deploy \
    --stack-name "AopsStack" \
    --template-file cloudformation/EC2-Instance.yaml\
    --capabilities CAPABILITY_IAM \
    --parameter-overrides file://parameters/dbt-deploy-stack.properties \
    --region "us-east-1"