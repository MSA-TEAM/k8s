kubectl run -i --tty load-generator --image=busybox /bin/sh
# while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done