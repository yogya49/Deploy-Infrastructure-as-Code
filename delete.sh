#!/bin/bash

aws cloudformation delete-stack \
--stack-name udagram-servers

aws cloudformation delete-stack \
--stack-name udagram-network