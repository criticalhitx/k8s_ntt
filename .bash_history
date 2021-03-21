cd /etc/hosts
nano /etc/hosts
yum install nano
nano /etc/hosts
hostname
cat /etc/hostname
nano /etc/hostname
hostnamectl set-hostname master
hostnamectl
init 6
yum upgrade -y
sudo yum remove docker                   docker-client                   docker-client-latest                   docker-common                   docker-latest                   docker-latest-logrotate                   docker-logrotate                   docker-engine
 sudo yum install -y yum-utils
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
yum list available docker --showduplicates
yum list available docker-ce --showduplicates
yum list available docker-ce-cli –showduplicates
yum list available containerd.io –showduplicates
sudo yum install docker-ce=3:19.03.10-3.el7 docker-ce-cli containerd.io
dockerce version
docker-ce
yum list available docker-ce –showduplicates
yum --showduplicates list docker-ce | expand
yum install docker-ce-3:19.03.10-3
yum install docker-ce-3:19.03.10
yum install docker-ce-3:19.03
yum install docker-ce-19.03
yum install docker-ce
yum install docker-ce-3:20.10.5-3.el7
yum install docker-ce-20.10.5-3.el7
yum --showduplicates list docker-ce | expand
yum install docker-ce-19.03.10-3.el7
sudo systemctl start docker
sudo docker run hello-world
fs -h
df -h
su criticalhitx
ip add
ping 10.0.5.1
yum update
y
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
exclude=kubelet kubeadm kubectl
EOF

sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
yum list available kubeadm –showduplicates
sudo yum install -y kubeadm=1.18.5-00 kubelet=1.18.5-00 kubectl=1.18.5-00 --disableexcludes=kubernetes
sudo yum install -y kubeadm-1.18.5-00 kubelet-1.18.5-00 kubectl-1.18.5-00 --disableexcludes=kubernetes
yum list available httpd –showduplicates
yum list available docker-ce –showduplicates
sudo systemctl enable --now kubelet
kubeadm init
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get all
kubectl get nodes
kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
kubectl version
yum list kubectl
yum avilable kubectl
yum list avilable kubectl
kubectl get nodes
kubectl get all -n=kube-system
nano /etc/hosts
kubectl get nodes -o wide
kubectl get all -n=kube-system
kubectl get nodes
kubectl get all -n=kube-system
kubectl describe pod/calico-node-7k2sk -n=kube-system
kubectl describe pod/calico-node-5sb8c -n=kube-system
kubectl get all -n=kube-system
nano apiVersion: apps/v1
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
nano nginx.yml
ls
kubectl apply -f nginx.yml
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f nginx.yml
kubectl get all
kubectl get po -o wide
kubectl delete -f nginx.yml
kubectl get all
ls
nano nginx.yml 
kubectl apply -f nginx.yml 
kubectl get all
nano nginx.yml 
kubectl apply -f nginx.yml 
kubectl get all
ls
tree
yum install tree
tree
mkdir 01_nginxonly
mv nginx.yml 01_nginxonly/
tree
mkdir 02_flask
cd 02_flask
ls
ls ..
# yum install bash-completion bash-completion-extras
yum install bash-completion bash-completion-extras
locate bash_completion.sh
yum install -y locate
ls
cd ..
ls
cd 01_nginxonly
ls ..
cd ..
cp 01_nginxonly/nginx.yml 02_flask/
tree
cd 02_flask
mv nginx.yml flask.yml
tree
nano flask.yml
kubectl get all
kubectl delete deployment.apps/nginx-deployment
kubectl delete service/nginx-service
kubectl get all
ls
cat flask.yml
ls
sudo apt-get install bash-completion
echo "source <(kubectl completion bash)" >> ~/.bashrc
source ~/.bashrc
clear
sudo yum install bash-completion
echo "source <(kubectl completion bash)" >> ~/.bashrc
source ~/.bashrc
ip add
docker run hello-world
sudo systemctl enable docker
sudo systemctl daemon-reload
sudo systemctl restart docker
docker run hello-world
sudo mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo systemctl enable docker
sudo systemctl daemon-reload
sudo systemctl restart docker
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl mask --now firewalld
swapoff -a
nano /etc/fstab
df -h
