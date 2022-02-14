pipeline{
    agent any
    stages{
        stage('stack-execution'){
            steps{
                withAWS(role: 'AopsJenkins', region: 'us-east-1'){
                        sh '
                            #!/bin/bash
                            scripts/deploy1.sh'
                    } 
            }
        }
    }
}