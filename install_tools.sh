sudo pip install awscli

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

# kops
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

aws s3api create-bucket --bucket gsp.sicc.co.kr
aws s3api put-bucket-versioning --bucket gsp.sicc.co.kr --versioning-configuration Status=Enabled

ID=$(uuidgen) && aws route53 create-hosted-zone --name gsp.sicc.co.kr --caller-reference $ID | jq .DelegationSet.NameServers


# certbot
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update


sudo certbot renew --dry-run
