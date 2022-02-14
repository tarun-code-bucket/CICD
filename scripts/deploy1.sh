#!/bin/bash

# Please ensure that you have the correct AWS credentials configured.
# Enter the name of the stack, the parameters file name, the template name, then changeset condition, and finally the region name.


aws cloudformation deploy \
    --stack-name "Aops_stack" \
    --template-file ./cloudformation/EC2-Instance.yaml\
    --capabilities "JenkinsUser" \
    --region "us-east-1"