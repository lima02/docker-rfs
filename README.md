# RFS package/deploy docker image

## Contents
`
dotnet cli (LTS at the time of image build),
npm and node.js,
aws cli
`

## Prepare
Set the following environment variables:

AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_DEFAULT_REGION, ENVIRONMENT, VERSION

## Usage
navigate to dir where source code is located and run:

`
docker run --rm -it --name rfs -v ${PWD}:/src -e AWS_ACCESS_KEY_ID=$Env:AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$Env:AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION=$Env:AWS_DEFAULT_REGION -e ENVIRONMENT=$Env:ENVIRONMENT -e VERSION=$Env:VERSION lima02/rfs /bin/bash
`

## Package
make package

## Deploy
make deploy
