docker build . -t auto-scale-test
docker tag auto-scale-test docker.gsp.sicc.co.kr/auto-scale-test
docker push docker.gsp.sicc.co.kr/auto-scale-test
kubectl run php-apache --image=docker.gsp.sicc.co.kr/auto-scale-test --requests=cpu=200m --expose --port=80