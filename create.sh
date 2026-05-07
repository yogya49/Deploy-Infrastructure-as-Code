#!/bin/bash

aws cloudformation create-stack \
--stack-name udagram-network \
--template-body file://network.yml \
--parameters ParameterKey=EnvironmentName,ParameterValue=Udagram

aws cloudformation create-stack \
--stack-name udagram-servers \
--template-body file://servers.yml \
--capabilities CAPABILITY_NAMED_IAM \
--parameters ParameterKey=EnvironmentName,ParameterValue=Udagram