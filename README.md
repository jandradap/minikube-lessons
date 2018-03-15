# minikube-lessons [![](https://images.microbadger.com/badges/version/jorgeandrada/minikube-lessons:master.svg)](https://microbadger.com/images/jorgeandrada/minikube-lessons:master "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/jorgeandrada/minikube-lessons:master.svg)](https://microbadger.com/images/jorgeandrada/minikube-lessons:master "Get your own image badge on microbadger.com")

![](https://raw.githubusercontent.com/jandradap/minikube-lessons/master/minikube.jpg)

## Install

### Minikube
```shell
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
```

### Kubectl

```shell
VERSION_KUBE=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
curl -LO https://storage.googleapis.com/kubernetes-release/release/$VERSION_KUBE/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
```

### Enabling shell autocompletion

```shell
apt-get install bash-completion
echo "source <(kubectl completion bash)" >> ~/.bashrc
```

## Minikube commands

```shell
minikube stop/start/delete/status
minikube dashboard # habilita el dashboard
minikube ssh #ssh to node
minikube service webserver #open the service in url
curl -sSL $(minikube service --url webserver) #get service url
```

### Update container image

```
kubectl set image deployment/nginx-deployment nginx=jorgeandrada/nginx-autoindex
```

## Use local images in minikube
So to use a image without uploading it you can follow these steps:

- set the environment variables with eval ```eval $(minikube docker-env)```
- build the image with the Docker daemon of Minukube (eg docker build -t my-image .)
- set the image in the pod spec like the build tag (eg my-image)
- set the **imagePullPolicy** to Never, otherwise Kubernetes will try to download the image
- update deployment ```kubectl set image deployment/nginx-deployment nginx=prueba:1```
