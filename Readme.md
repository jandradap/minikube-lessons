<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [minikube](#minikube)
  - [Instalación](#instalaci%C3%B3n)
  - [Comandos de minikube](#comandos-de-minikube)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# minikube

![](minikube.jpg)

## Instalación

- 1: Instalar Virtual Box
- 2: Instalar minikube

```shell
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```

- 3: Instalar kubectl

```shell
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
```

- 4: Enabling shell autocompletion

```shell
apt-get install bash-completion
echo "source <(kubectl completion bash)" >> ~/.bashrc
```

## Comandos de minikube

```shell
minikube stop/start/delete/status
minikube dashboard # habilita el dashboard
minikube service ejemplo-nginx # abre web del servicio
minikube ssh # entra en el nodo
```




kubectl set image deployment/nginx-deployment nginx=jorgeandrada/nginx-autoindex

So to use a image without uploading it you can follow these steps:

set the environment variables with eval $(minikube docker-env)
build the image with the Docker daemon of Minukube (eg docker build -t my-image .)
set the image in the pod spec like the build tag (eg my-image)
set the imagePullPolicy to Never, otherwise Kubernetes will try to download the image

eval $(minikube docker-env) #para usar el demonio local
kubectl set image deployment/nginx-deployment nginx=prueba:1


minikube service webserver

curl -sSL $(minikube service --url webserver)

   25  docker build -t joder:latest .
   26  kubectl set image deployment/nginx-deployment nginx=nginx:alpine
   27  kubectl set image deployment/nginx-deployment nginx=joder
   28  docker build -t joder:v2 .
   29  kubectl set image deployment/nginx-deployment nginx=joder:v2
   30  history
