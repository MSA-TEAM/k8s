kubectl run -i --tty load-generator --image=busybox /bin/sh

# kubectl exec -it php-apache-7d9d4c7485-rbxr7 /bin/sh
# while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done