#!/bin/bash

# Please ensure that you have the correct AWS credentials configured.
# Enter the name of the stack, the parameters file name, the template name, then changeset condition, and finally the region name.


aws cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file cloudformation/$TEMPLATE_NAME \
    --parameter-overrides file://parameters/$PARAMETERS_FILE_NAME \
    --capabilities CAPABILITY_NAMED_IAM \
    --region $REGION