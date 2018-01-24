export KOPS_STATE_STORE=s3://k8s.sicc.co.kr
kops delete cluster --name gsp.sicc.co.kr --yes
