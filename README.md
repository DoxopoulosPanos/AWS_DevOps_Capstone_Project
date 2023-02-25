# AWS_DevOps_Capstone_Project

## Environment Setup
python3 -m venv ~/.devops
source ~/.devops/bin/activate

## Continuous Integration phase


## deployment type
blue/green deployment

## deploying old code
step 1 : manually created an s3 bucket with name capstone-kk1j287dhjppmz410
step 2 : upload index.html file with the following command (allow acls and make bucket and index.html public)
    aws s3 cp old_approach/index.html s3://capstone-kk1j287dhjppmz410/
step 3: deploy cloudfront connected to the s3 bucket serving as static website:

    aws cloudformation deploy \
             --template-file old_approach/Infra/deploy_old_infra.yml \
             --stack-name InitialStack\
             --parameter-overrides WorkflowID=kk1j287dhjppmz410
             
## 