# k8s_keepalived

Manifest to create a pod on a kubernetes cluster.
Usage :
    
    INT=eth0
    VIP=10.0.0.1
    curl https://raw.githubusercontent.com/goacid/k8s_keepalived/main/kubealived.yaml | \
       sed -e "s/_RID_/$((1 + RANDOM % 255))/" \
           -e "s/_INT_/${IFACE}/" \
           -e "s/_VIP_/${VIP}/" \
           -e "s~_PASSWORD_~$(openssl rand -base64 8)~" | \
       kubectl create -f-
    