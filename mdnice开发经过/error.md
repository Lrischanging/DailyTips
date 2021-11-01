##### 三网络

![three-04](D:/公众号/图文/05image/three-04.bmp)





<div  style="white-space: nowrap;overflow-x:scroll;">  </div>

```
三个网络
集群1
137,138,139
集群2
140,141,142
集群3
143,144,145

给istio-system namespace打标签

cluster1:
 kubectl  label namespace istio-system topology.istio.io/network=network1

cluster2:
 kubectl  label namespace istio-system topology.istio.io/network=network2
 
 cluster3:
 kubectl  label namespace istio-system topology.istio.io/network=network3
 
 cluster1:
 生成istio operator部署文件
 cat <<EOF > cluster1.yaml
apiVersion: install.istio.io/v1alpha1
kind: IstioOperator
spec:
  profile: demo
  values:
    global:
      meshID: mesh1
      multiCluster:
        clusterName: cluster1
      network: network1
  meshConfig:
    accessLogFile: /dev/stdout
    enableTracing: true
  components:
    egressGateways:
    - name: istio-egressgateway
      enabled: true
EOF

 生成istio operator部署文件
 cat <<EOF > cluster2.yaml
apiVersion: install.istio.io/v1alpha1
kind: IstioOperator
spec:
  profile: demo
  values:
    global:
      meshID: mesh1
      multiCluster:
        clusterName: cluster2
      network: network2
  meshConfig:
    accessLogFile: /dev/stdout
    enableTracing: true
  components:
    egressGateways:
    - name: istio-egressgateway
      enabled: true
EOF

 生成istio operator部署文件
 cat <<EOF > cluster3.yaml
apiVersion: install.istio.io/v1alpha1
kind: IstioOperator
spec:
  profile: demo
  values:
    global:
      meshID: mesh1
      multiCluster:
        clusterName: cluster3
      network: network3
  meshConfig:
    accessLogFile: /dev/stdout
    enableTracing: true
  components:
    egressGateways:
    - name: istio-egressgateway
      enabled: true
EOF

传输部署文件
scp cluster2.yaml root@192.168.229.140:/root
scp cluster3.yaml root@192.168.229.143:/root

部署istio
istioctl install  -f cluster1.yaml

生成东西向网关
/root/istio-1.11.2/samples/multicluster/gen-eastwest-gateway.sh --mesh mesh1 --cluster cluster1 --network network1 | istioctl  install -y -f -

配置东西向网关ip 
 kubectl patch svc  -n istio-system istio-eastwestgateway -p '{"spec":{"externalIPs":["192.168.229.100"]}}'
 
 暴露服务
 kubectl  apply -n istio-system -f /root/istio-1.11.2/samples/multicluster/expose-services.yaml
 
 
cluster2:
部署istio
 istioctl install -f cluster2.yaml
 
 生成东西向网关
 /root/istio-1.11.2/samples/multicluster/gen-eastwest-gateway.sh --mesh mesh1 --cluster cluster2 --network network2 |  istioctl install -y  -f -
 
配置东西向网关ip 
 kubectl patch svc  -n istio-system istio-eastwestgateway -p '{"spec":{"externalIPs":["192.168.229.101"]}}'
 
 暴露服务
 kubectl  apply -n istio-system -f  /root/istio-1.11.2/samples/multicluster/expose-services.yaml
 
 cluster3:
 部署istio
 istioctl install -f cluster3.yaml
 
  生成东西向网关
  /root/istio-1.11.2/samples/multicluster/gen-eastwest-gateway.sh --mesh mesh1 --cluster cluster3 --network network3 |  istioctl install -y  -f -
  
配置东西向网关ip 
 kubectl patch svc  -n istio-system istio-eastwestgateway -p '{"spec":{"externalIPs":["192.168.229.102"]}}'
 
 暴露服务
 kubectl  apply -n istio-system -f   /root/istio-1.11.2/samples/multicluster/expose-services.yaml
 
 cluster1:
 生成访问apiserver secret
 istioctl x create-remote-secret --name=cluster1  --server=https://192.168.229.137:6443 > remote-secret-cluster1.yaml
 
 传输secret
scp remote-secret-cluster1.yaml root@192.168.229.140:/root
scp remote-secret-cluster1.yaml root@192.168.229.143:/root

cluster2
  生成访问apiserver secret
 istioctl x create-remote-secret --name=cluster2  --server=https://192.168.229.140:6443 > remote-secret-cluster2.yaml
 
  传输secret
 scp remote-secret-cluster2.yaml root@192.168.229.137:/root
  scp remote-secret-cluster2.yaml root@192.168.229.143:/root

cluster3
   生成访问apiserver secret
 istioctl x create-remote-secret --name=cluster3  --server=https://192.168.229.143:6443 > remote-secret-cluster3.yaml
 
  传输secret
 scp remote-secret-cluster3.yaml root@192.168.229.137:/root
  scp remote-secret-cluster3.yaml root@192.168.229.140:/root
 
 cluster1：
  kubectl apply -f remote-secret-cluster2.yaml
  kubectl apply -f remote-secret-cluster3.yaml
  
   cluster2：
  kubectl apply -f remote-secret-cluster1.yaml
  kubectl apply -f remote-secret-cluster3.yaml
  
   cluster3：
  kubectl apply -f remote-secret-cluster1.yaml
  kubectl apply -f remote-secret-cluster2.yaml
  
  cluster1:
 kubectl rollout restart deploy -n istio
 kubectl rollout restart deploy -n istio-system
 
 cluster2:
 kubectl apply -f remote-secret-cluster3.yaml
 
 kubectl rollout restart deploy -n istio
 kubectl rollout restart deploy -n istio-system
 
 cluster3:
 kubectl rollout restart deploy -n istio
 kubectl rollout restart deploy -n istio-system
 

```



cluster1:部署zipkin

```
 kubectl apply -f extras/zipkin.yaml -n istio-system
```

cluster1增加东西向网关端口

```
 
  kubectl patch svc  -n istio-system istio-eastwestgateway -p '{"spec":{"ports":[{"name": "http-zipkin", "nodePort": 32197,"port": 15018, "protocol": "TCP", "targetPort": 15018}]}}'
```

cluster1:

暴露zipkin

visilazation/zipkin-gw-vs.yaml

 kubectl apply -f zipkin-gw-vs.yaml -n istio-system

```
apiVersion: networking.istio.io/v1alpha3
kind: Gateway
metadata:
  name: zipkin-gateway
spec:
  selector:
    istio: eastwestgateway
  servers:
    - port:
        name: http-zipkin
        number: 15018
        protocol: http        
      hosts:
        - "*"
---
apiVersion: networking.istio.io/v1alpha3
kind: VirtualService
metadata:
  name: zipkin-vs
spec:
  hosts:
  - "*"
  gateways:
  - zipkin-gateway
  http:
  - route:
    - destination:
        host: zipkin.istio-system.svc.cluster.local
        port:
          number: 9411
```





cluster1，cluster2,cluster3: cm istio   

```
[root@node01 ~]# kubectl get cm istio -n istio-system -o yaml
apiVersion: v1
data:
  mesh: |-
    accessLogFile: /dev/stdout
    enableTracing: true
    defaultConfig:
      discoveryAddress: istiod.istio-system.svc:15012
      meshId: mesh1
      proxyMetadata: {}
      tracing:
        sampling: 100
        zipkin:
          address: 192.168.229.100:15018
    enablePrometheusMerge: true
    enableTracing: true
    rootNamespace: istio-system
    trustDomain: cluster.local
  meshNetworks: 'networks: {}'
  
  修改
        sampling: 100
        zipkin:
          address: 192.168.229.100:15018
```

```
 cluster1: 
  重启pod
 kubectl rollout restart deploy -n istio
 
 cluster2:
   重启pod
 kubectl rollout restart deploy -n istio
 
  
 cluster3:
   重启pod
 kubectl rollout restart deploy -n istio
```



暴露服务：

kubectl port-forward --address 0.0.0.0 -n istio-system zipkin-6b8c6bdc56-m2b4f 9411:9411

![10](44image\10.jpg)

清理：

```
cluster1:

kubectl  label namespace istio-system topology.istio.io/network-
kubectl delete secret istio-remote-secret-cluster2 -n istio-system
kubectl delete secret istio-remote-secret-cluster3 -n istio-system
kubectl delete gw cross-network-gateway -n istio-system
kubectl delete gw zipkin-gateway -n istio-system
kubectl delete vs zipkin-vs -n istio-system
istioctl x uninstall -f cluster1.yaml





reboot



cluster2:

kubectl  label namespace istio-system topology.istio.io/network-
kubectl delete secret istio-remote-secret-cluster1 -n istio-system
kubectl delete secret istio-remote-secret-cluster3 -n istio-system
kubectl delete gw cross-network-gateway -n istio-system
istioctl x uninstall -f cluster2.yaml





reboot



cluster3:

kubectl  label namespace istio-system topology.istio.io/network-
kubectl delete secret istio-remote-secret-cluster1 -n istio-system
kubectl delete secret istio-remote-secret-cluster3 -n istio-system
kubectl delete gw cross-network-gateway -n istio-system
istioctl x uninstall -f cluster3.yaml





reboot

```





# 总结

1不管是单istiod还是多istiod，mesh config都是本集群内的istiod生效，即使本集群proxy不连本集群istiod。我猜测如果proxy连接的是远程istiod，远程istiod也会通过k8s去获取本地istiod的的meshconfig。

2多集群如果是单网络，其他集群的带proxy的endpoint，本集群是可以直接用的，能解析成ip；但是不带proxy的服务不能在远端集群直接使用。所以如果要配置tracing地址，必须东西向网关暴露zipkin，然后把tracing的地址配成东西向网关的地址。

3mesh config配置修改后istiod直接生效，但是proxy不生效，需要重启proxy

4当zipkin所在集群没有东西向网关时需要创建东西向网关