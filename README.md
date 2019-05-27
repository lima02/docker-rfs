# RFS package/deploy docker image

## Contents
`
dotnet cli (LTS at the time of image build),
npm and node.js,
aws cli
`

## Before running container
set environment variables:

`
AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
`

## Usage
navigate to dir where source code is located and run:

`
docker run --rm -it --name rfs -v ${PWD}:/src -e AWS_ACCESS_KEY_ID=$Env:AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$Env:AWS_SECRET_ACCESS_KEY lima02/rfs /bin/ash
`
