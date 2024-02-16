curl -L https://istio.io/downloadIstio | sh -
cd istio-1.20.*
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
kubectl apply -f samples/addons/kiali.yaml
kubectl apply -f samples/addons/prometheus.yaml
kubectl label namespace default istio-injection=enabled

