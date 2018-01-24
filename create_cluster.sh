#/usr/bin/env bash
export KOPS_STATE_STORE=s3://k8s.sicc.co.kr
export CLUSTER_NAME=gsp.sicc.co.kr
export VPC_ID=vpc-4fdb7927

kops create cluster --name=$CLUSTER_NAME --zones=ap-northeast-2a --cloud=aws --dns-zone=gsp.sicc.co.kr \
--master-size=t2.medium --node-size=t2.small --node-count=2 --master-count=1 \
--vpc=$VPC_ID --topology=private --networking=calico
